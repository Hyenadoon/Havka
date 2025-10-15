require 'telegram/bot'
require 'open-uri'

class TelegramController < ApplicationController
  skip_before_action :verify_authenticity_token

  def webhook
    update = params[:telegram] || params
    message = update['message']
    return head :ok unless message

    chat_id = message['chat']['id']

    if message['photo'].present?
      process_photo(message['photo'], chat_id)
    elsif message['text'].present?
      process_text(message['text'], chat_id)
    else
      bot.api.send_message(chat_id: chat_id, text: "Не могу обработать это сообщение.")
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

  def process_photo(photo_sizes, chat_id)
  file_id = photo_sizes.last['file_id']
  Rails.logger.info("Получено фото с file_id: #{file_id}")

  bot.api.send_message(chat_id: chat_id, text: "Фото получено, начинаю распознавание... 🔍")

  file_info = bot.api.get_file(file_id: file_id)
  file_path = file_info.respond_to?(:file_path) ? file_info.file_path : file_info['result']['file_path']
  file_url = "https://api.telegram.org/file/bot#{ENV['TELEGRAM_BOT_TOKEN']}/#{file_path}"

  tempfile = Tempfile.new(['telegram_image', '.jpg'])
  tempfile.binmode
  tempfile.write URI.open(file_url).read
  tempfile.rewind

  result = FoodAnalyzerService.analyze(tempfile)
  tempfile.close

  if result.is_a?(Array) && result.first.is_a?(FoodAnalyzerService::ScanItem)
    formatted = result.map do |item|
      "#{item.name} — #{item.quantity} #{item.unit} (≈ #{item.grams} г)"
    end.join("\n")
    bot.api.send_message(chat_id: chat_id, text: "Распознал:\n#{formatted}")
  else
    bot.api.send_message(chat_id: chat_id, text: "Ошибка: #{result.first[:error]}")
  end
rescue => e
  Rails.logger.error("process_photo error: #{e.class} #{e.message}")
  bot.api.send_message(chat_id: chat_id, text: "Не удалось обработать изображение: #{e.message}")
end

  def process_text(text, chat_id)
    bot.api.send_message(chat_id: chat_id, text: "Отправь фото еды, я попробую распознать её состав 🍽️")
  end
end


