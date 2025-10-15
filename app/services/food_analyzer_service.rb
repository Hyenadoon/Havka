# app/services/food_analyzer_service.rb
class FoodAnalyzerService
  require "openai"
  require Rails.root.join("config/prompts/food_analyzer_prompt")

  ScanItem = Struct.new(:id, :name, :quantity, :unit, :grams, keyword_init: true)

  def self.analyze(image_file)
    # 1️⃣ Загружаем изображение на imgBB
    uploaded = ImageUploaderService.upload(image_file)
    image_url = uploaded[:url]

    # 2️⃣ Отправляем запрос в OpenAI
    client = OpenAI::Client.new(api_key: ENV["OPENAI_API_KEY"])
    response = client.responses.create(
      model: "gpt-5-mini",
      input: [
        {
          role: "user",
          content: [
            { type: "input_text", text: FOOD_ANALYZER_PROMPT },
            { type: "input_image", image_url: image_url }
          ]
        }
      ]
    )

    raw_text = response.output_text || "[]"

    # 3️⃣ Парсим JSON и создаём список продуктов
    raw_items = JSON.parse(raw_text)
    raw_items.map.with_index do |item, idx|
      ScanItem.new(
        id: idx,
        name: item["name"],
        quantity: item["quantity"],
        unit: item["unit"],
        grams: item["grams"]
      )
    end

  rescue JSON::ParserError
    [{ error: "Не удалось разобрать JSON. Ответ модели: #{raw_text}" }]
  rescue => e
    Rails.logger.error "FoodAnalyzerService error: #{e.message}"
    [{ error: "Ошибка анализа изображения: #{e.message}" }]
  end
end
