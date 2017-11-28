class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :apellido
      t.string :cedula
      t.text :direccion
      t.date :fechanacimineto
      t.string :telefono
      t.boolean :estado
      t.date :fechacontrato
      t.date :fechafincontrato
      t.string :cargo

      t.timestamps null: false
    end
  end
end
