class RecipeRecommenderService
  Result = Struct.new(
    :recipe,
    :owned_ingredients,
    :missing_ingredients,
    :owned_ratio,
    :missing_cost,
    :saving,
    :total_cost, # добавили поле для полной стоимости рецепта
    keyword_init: true
  )

  def self.call(user:, recognized_products:, budget:)
    new(user, recognized_products, budget).call
  end

  def initialize(user, recognized_products, budget)
    @user = user
    @recognized_products = recognized_products
    @budget = budget.to_f
  end

  def call
    Recipe.includes(recipe_ingredients: :product).map do |recipe|
      matched, missing = split_ingredients(recipe)

      total = recipe.recipe_ingredients.size.nonzero? || 1
      owned_ratio = matched.size.to_f / total
      missing_cost = cost_of(missing)
      total_cost   = cost_of(recipe.recipe_ingredients)

        next if missing_cost > @budget

        Result.new(
        recipe: recipe,
        owned_ingredients: matched,
        missing_ingredients: missing,
        owned_ratio: owned_ratio.round(2),
        missing_cost: missing_cost.round,
        saving: (total_cost - missing_cost).round # реальная экономия
        )
    end.compact.sort_by { |r| [-r.owned_ratio.to_f, r.missing_cost.to_f] }
  end

  private

  def split_ingredients(recipe)
    matched = []
    missing = []

    recipe.recipe_ingredients.each do |ri|
      if @recognized_products.map(&:id).include?(ri.product.id)
        matched << ri
      else
        missing << ri
      end
    end

    [matched, missing]
  end

def cost_of(ingredients)
  ingredients.sum do |ri|
    unit_factor = unit_to_kg(ri.unit, ri.quantity.to_f, ri.product)
    price = ri.product.price_per_kg.to_f
    price * unit_factor
  end
end

  def unit_to_kg(unit, quantity, product)
    case unit
    when "кг" then quantity
    when "г" then quantity / 1000.0
    when "шт"
      if (cal = product.product_calibers.first)
        (quantity * cal.weight_g) / 1000.0
      else
        0
      end
    else
      0
    end
  end
end
