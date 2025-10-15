class CreateUserInventories < ActiveRecord::Migration[8.0]
  def change
    create_table :user_inventories do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.references :product_caliber, null: false, foreign_key: true
      t.decimal :quantity
      t.string :unit

      t.timestamps
    end
  end
end
