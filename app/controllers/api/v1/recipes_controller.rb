module Api
  module V1
    class RecipesController < ApplicationController
      protect_from_forgery with: :null_session

      def index
        recipes = Recipe.includes(recipe_ingredients: :product)
        render json: recipes.map { |r| recipe_json(r) }
      end

      def show
        recipe = Recipe.includes(recipe_ingredients: :product).find(params[:id])
        render json: recipe_json(recipe)
      end

      def create
        recipe = Recipe.new(recipe_params)

        if recipe.save
          render json: recipe_json(recipe), status: :created
        else
          render json: { errors: recipe.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        recipe = Recipe.find(params[:id])

        if recipe.update(recipe_params)
          render json: recipe_json(recipe), status: :ok
        else
          render json: { errors: recipe.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        recipe = Recipe.find(params[:id])
        recipe.destroy
        head :no_content
      end

      private

      def recipe_params
        params.require(:recipe).permit(
          :name,
          :description,
          :image_url,
          :cooking_time_minutes,
          :price,
          :servings
        )
      end

      def recipe_json(recipe)
        {
          id: recipe.id,
          name: recipe.name,
          description: recipe.description,
          image_url: recipe.image_url,
          cooking_time_minutes: recipe.cooking_time_minutes,
          price: recipe.try(:price),
          servings: recipe.try(:servings),

          ingredients: recipe.recipe_ingredients.map do |ri|
            {
              id: ri.id,
              amount: ri.amount,
              unit: ri.unit,
              product: {
                id: ri.product.id,
                name: ri.product.name,
                image_url: ri.product.image_url
              }
            }
          end
        }
      end
    end
  end
end
