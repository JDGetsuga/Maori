class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :nombretarifa
      t.integer :sesiones
      t.references :service, index: true, foreign_key: true
      t.decimal :precio
      t.decimal :descuento
      t.integer :estado

      t.timestamps null: false
    end
  end
end
