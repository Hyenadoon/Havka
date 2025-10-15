class CreateRecipes < ActiveRecord::Migration[8.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.integer :total_time
      t.integer :servings
      t.string :cuisine
      t.boolean :spicy
      t.string :image_url

      t.timestamps
    end
  end
end
