class UserSession < ApplicationRecord
  belongs_to :user

  scope :active, -> { where("expires_at > ?", Time.current) }

  def expired?
    expires_at.present? && expires_at < Time.current
  end

  # создаёт или возвращает активную сессию
  def self.for(user)
    session = active.find_by(user: user)
    if session.nil? || session.expired?
      session = create!(user: user, state: {}, expires_at: 30.minutes.from_now)
    end
    session
  end

  # вспомогательные методы
  def recognized_products
    Product.where(name: state["recognized_items"] || [])
  end

  def budget
    state["budget"].to_i
  end

  def next_recipe_index
    state["current_index"].to_i
  end

  def advance_recipe!
    state["current_index"] = next_recipe_index + 1
    save!
  end

  # --- для ActiveAdmin ---
  def self.ransackable_attributes(_auth_object = nil)
    column_names
  end

  def self.ransackable_associations(_auth_object = nil)
    reflect_on_all_associations.map(&:name).map(&:to_s)
  end
end
