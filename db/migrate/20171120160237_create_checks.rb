class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.string :numero
      t.string :nombre
      t.string :banco
      t.decimal :cantidad
      t.references :sale, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
