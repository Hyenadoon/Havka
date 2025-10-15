class Recipe < ApplicationRecord
  has_many :recipe_ingredients, dependent: :destroy
  has_many :products, through: :recipe_ingredients

    # Разрешаем все атрибуты для поиска (для галочки)
  def self.ransackable_attributes(auth_object = nil)
    column_names
  end

  # Разрешаем все ассоциации для поиска (для галочки)
  def self.ransackable_associations(auth_object = nil)
    reflect_on_all_associations.map(&:name).map(&:to_s)
  end
end
