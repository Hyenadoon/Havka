require 'telegram/bot'
require 'open-uri'
require 'json'

class TelegramController < ApplicationController
  skip_before_action :verify_authenticity_token

  def webhook
    update = params[:telegram] || params

    if update['callback_query'].present?
      process_callback(update['callback_query'])
    elsif (message = update['message']).present?
      process_message(message)
    end

    head :ok
  rescue => e
    Rails.logger.error("Telegram webhook error: #{e.class} #{e.message}")
    head :internal_server_error
  end

  private

  def bot
    @bot ||= Telegram::Bot::Client.new(ENV['TELEGRAM_BOT_TOKEN'])
  end

  # ========== обработка обычных сообщений ==========
  def process_message(message)
    chat_id = message['chat']['id']
    user = User.find_or_create_by!(telegram_id: chat_id, name: message['chat']['first_name'])
    session = UserSession.for(user)

    if message['photo'].present?
      process_photo(message['photo'], chat_id, session)
    elsif message['text'].present?
      process_text(message['text'], chat_id, session)
    end
  end

  # ========== распознавание фото ==========
def process_photo(photo_sizes, chat_id, session)
  file_id = photo_sizes.last['file_id']
  Rails.logger.info("Получено фото с file_id: #{file_id}")

  bot.api.send_message(chat_id: chat_id, text: "Фото получено, начинаю распознавание... 🔍")

  file_info = bot.api.get_file(file_id: file_id)
  file_path = file_info.respond_to?(:file_path) ? file_info.file_path : file_info['result']['file_path']

  unless file_path
    bot.api.send_message(chat_id: chat_id, text: "Не удалось получить путь к файлу 😕")
    return
  end

  file_url = "https://api.telegram.org/file/bot#{ENV['TELEGRAM_BOT_TOKEN']}/#{file_path}"

  tempfile = Tempfile.new(['telegram_image', '.jpg'])
  tempfile.binmode
  tempfile.write URI.open(file_url).read
  tempfile.rewind

  result = FoodAnalyzerService.analyze(tempfile)
  tempfile.close

  if result.is_a?(Array) && result.first.is_a?(FoodAnalyzerService::ScanItem)
    items = result.map(&:name)
    session.state['recognized_items'] = items
    session.save!

    formatted = items.join(', ')
    bot.api.send_message(chat_id: chat_id, text: "Я вижу: #{formatted}.\n\nВведи свой бюджет 💰 (в рублях):")
  else
    bot.api.send_message(chat_id: chat_id, text: "Ошибка: #{result.first[:error]}")
  end
rescue => e
  Rails.logger.error("process_photo error: #{e.class} #{e.message}")
  bot.api.send_message(chat_id: chat_id, text: "Не удалось обработать изображение: #{e.message}")
end



  # ========== обработка текста ==========
def process_text(text, chat_id, session)
  if text =~ /^\d+$/
    # Проверяем, что есть распознанные продукты
    if session.state["recognized_items"].blank?
      bot.api.send_message(chat_id: chat_id, text: "Сначала отправь фото еды 🍲, чтобы я понял, что у тебя есть.")
      return
    end

    # Всё ок, продолжаем обработку бюджета
    session.state['budget'] = text.to_i
    session.save!

    bot.api.send_message(chat_id: chat_id, text: "Бюджет принят: #{text} ₽. Думаю над рецептами... 🤔")

    recommendations = RecipeRecommenderService.call(
      user: session.user,
      recognized_products: session.recognized_products,
      budget: session.budget
    )

    if recommendations.empty?
      bot.api.send_message(chat_id: chat_id, text: "Ни один рецепт не вписался в бюджет 😕")
    else
      session.state['recommendations'] = recommendations.map { |r| r.recipe.id }
      session.state['current_index'] = 0
      session.save!
      send_recipe(chat_id, recommendations.first)
    end
  else
    bot.api.send_message(chat_id: chat_id, text: "Отправь фото еды, я попробую распознать её состав 🍽️")
  end
end

  # ========== показ рецепта ==========
def send_recipe(chat_id, rec, message_id: nil)
  require 'json'

  recipe = rec.recipe

  text = <<~TXT
    🥘 *#{recipe.name}*

    Совпадение: #{(rec.owned_ratio * 100).to_i}%
    Нужно докупить на: #{rec.missing_cost} ₽
    Экономия: #{rec.saving} ₽

    Ингредиенты:
    #{rec.owned_ingredients.map { |i| "✅ #{i.product.name}" }.join("\n")}
    #{rec.missing_ingredients.map { |i| "❌ #{i.product.name}" }.join("\n")}
  TXT

  # экранируем символы, которые ломают Markdown
  safe_text = text
                .gsub('_', '\\_')
                .gsub('*', '\\*')
                .gsub('[', '\\[')
                .gsub('`', '\\`')

  keyboard = {
    inline_keyboard: [
      [
        { text: "Выбрать ✅", callback_data: "choose_recipe:#{recipe.id}" },
        { text: "Следующий ▶️", callback_data: "next_recipe" }
      ]
    ]
  }

  # используем JSON.generate, чтобы Telegram понял markup
  markup_json = JSON.generate(keyboard)

  if recipe.image_url.present?
    bot.api.send_photo(
      chat_id: chat_id,
      photo: recipe.image_url,
      caption: safe_text.strip,
      parse_mode: 'Markdown',
      reply_markup: markup_json
    )
  else
    bot.api.send_message(
      chat_id: chat_id,
      text: safe_text.strip,
      parse_mode: 'Markdown',
      reply_markup: markup_json
    )
  end
end



  # ========== обработка кнопок ==========
def process_callback(callback)
  # --- Telegram требует мгновенного подтверждения ---
  begin
    bot.api.answer_callback_query(callback_query_id: callback['id'])
  rescue Telegram::Bot::Exceptions::ResponseError => e
    Rails.logger.warn("Callback answer skipped: #{e.message}")
  rescue StandardError => e
    Rails.logger.warn("Callback quick-response failed: #{e.class} #{e.message}")
  end

  # --- Извлекаем данные максимально безопасно ---
  data     = callback['data'].to_s
  message  = callback['message'] || {}
  chat_id  = message.dig('chat', 'id') || callback.dig('from', 'id')

  return unless chat_id && data.present?

  user = User.find_by(telegram_id: chat_id)
  unless user
    bot.api.send_message(chat_id: chat_id, text: "Сессия устарела. Отправь фото заново 🍲")
    return
  end

  session = UserSession.for(user)
  unless session&.state&.dig('recommendations')
    bot.api.send_message(chat_id: chat_id, text: "Данные устарели. Начни с фото заново 📷")
    return
  end

  # --- Основная логика кнопок ---
  case data
  when /^next_recipe$/
    begin
      session.advance_recipe!
      index   = session.next_recipe_index
      rec_ids = session.state['recommendations']

      if index < rec_ids.size
        rec = RecipeRecommenderService.call(
          user: user,
          recognized_products: session.recognized_products,
          budget: session.budget
        ).find { |r| r.recipe.id == rec_ids[index] }

        if rec
          send_recipe(chat_id, rec)
        else
          bot.api.send_message(chat_id: chat_id, text: "Не удалось найти следующий рецепт 😕")
        end
      else
        bot.api.send_message(chat_id: chat_id, text: "Больше рецептов нет 🍽️")
      end
    rescue => e
      Rails.logger.error("Error in next_recipe: #{e.class} #{e.message}")
      bot.api.send_message(chat_id: chat_id, text: "Ошибка при загрузке следующего рецепта 😔")
    end

  when /^choose_recipe:(\d+)$/
    recipe_id = $1.to_i
    begin
      recipe = Recipe.find(recipe_id)
      bot.api.send_message(chat_id: chat_id, text: "Отличный выбор! 👨‍🍳\n\n#{recipe.instructions}")
    rescue ActiveRecord::RecordNotFound
      bot.api.send_message(chat_id: chat_id, text: "Рецепт не найден 🤷‍♂️")
    rescue => e
      Rails.logger.error("Error in choose_recipe: #{e.class} #{e.message}")
      bot.api.send_message(chat_id: chat_id, text: "Что-то пошло не так при выборе рецепта 😬")
    end

  else
    bot.api.send_message(chat_id: chat_id, text: "Неизвестная кнопка 🤔")
  end
end

end
