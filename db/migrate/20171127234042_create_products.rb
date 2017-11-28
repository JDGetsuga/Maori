class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.decimal :preciocompra
      t.decimal :precioventa
      t.integer :cantidad
      t.integer :cantidadminima
      t.decimal :ganancia
      t.references :provider, index: true, foreign_key: true
      t.string :tipo
      t.boolean :estado

      t.timestamps null: false
    end
  end
end
