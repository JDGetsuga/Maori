class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :client, index: true, foreign_key: true
      t.date :fechainicio
      t.date :fechaexpiracion
      t.references :service, index: true, foreign_key: true
      t.references :price, index: true, foreign_key: true
      t.integer :entradastotales
      t.integer :entradasfaltantes
      t.string :estado
      t.references :sale, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
