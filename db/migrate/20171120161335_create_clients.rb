class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nombre
      t.string :apellido
      t.string :cedula
      t.string :genero
      t.string :telefono
      t.string :correo
      t.date :fechanacimiento
      t.text :direccion
      t.string :ciudad
      t.string :provincia
      t.string :pais

      t.timestamps null: false
    end
  end
end
