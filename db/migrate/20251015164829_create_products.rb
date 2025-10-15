class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :default_unit
      t.decimal :price_per_kg
      t.integer :calories
      t.decimal :protein
      t.decimal :fat
      t.decimal :carbs

      t.timestamps
    end
  end
end
