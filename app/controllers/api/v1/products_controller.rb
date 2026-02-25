module Api
  module V1
    class ProductsController < ApplicationController
      protect_from_forgery with: :null_session

      def index
        products = Product.all
        render json: products.map { |p| product_json(p) }
      end

      def show
        product = Product.includes(:product_calibers).find(params[:id])

        render json: product_json(product).merge(
          calibers: product.product_calibers.map do |c|
            {
              id: c.id,
              name: c.name,
              size: c.size,
              weight: c.weight
            }
          end
        )
      end

      def create
        product = Product.new(product_params)

        if product.save
          render json: product_json(product), status: :created
        else
          render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        product = Product.find(params[:id])

        if product.update(product_params)
          render json: product_json(product), status: :ok
        else
          render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        product = Product.find(params[:id])
        product.destroy
        head :no_content
      end

      private

      def product_params
        params.require(:product).permit(
          :name,
          :image_url,
          :calories,
          :proteins,
          :fats,
          :carbs
        )
      end

      def product_json(product)
        {
          id: product.id,
          name: product.name,
          image_url: product.image_url,
          calories: product.try(:calories),
          proteins: product.try(:proteins),
          fats: product.try(:fats),
          carbs: product.try(:carbs)
        }
      end
    end
  end
end