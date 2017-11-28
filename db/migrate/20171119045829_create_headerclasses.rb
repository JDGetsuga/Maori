class CreateHeaderclasses < ActiveRecord::Migration
  def change
    create_table :headerclasses do |t|
      t.date :fecha
      t.time :horainicio
      t.time :horafin
      t.integer :capacidadmaxima
      t.integer :registrados
      t.references :service, index: true, foreign_key: true
      t.references :schedule, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
