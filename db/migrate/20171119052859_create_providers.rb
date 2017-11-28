class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :nombre
      t.string :ruc
      t.string :telefono
      t.text :direccion
      t.string :email

      t.timestamps null: false
    end
  end
end
