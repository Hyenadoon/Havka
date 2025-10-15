class CreateProductCalibers < ActiveRecord::Migration[8.0]
  def change
    create_table :product_calibers do |t|
      t.references :product, null: false, foreign_key: true
      t.string :name
      t.integer :weight_g
      t.string :note

      t.timestamps
    end
  end
end
