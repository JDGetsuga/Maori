class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :fechainicio
      t.date :fechafin
      t.text :dias
      t.time :horainicio
      t.time :horafin
      t.references :user, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
