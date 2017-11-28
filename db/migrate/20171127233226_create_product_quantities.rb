class CreateProductQuantities < ActiveRecord::Migration
  def change
    create_table :product_quantities do |t|
      t.references :product, index: true, foreign_key: true
      t.integer :quantity
      t.references :sale, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
