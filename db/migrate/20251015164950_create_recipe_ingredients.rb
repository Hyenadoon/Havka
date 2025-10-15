class CreateRecipeIngredients < ActiveRecord::Migration[8.0]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.decimal :quantity
      t.string :unit

      t.timestamps
    end
  end
end
