class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.date :fecha
      t.date :hora
      t.references :client, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :membership, index: true, foreign_key: true
      t.decimal :totalefectivo
      t.decimal :totaltarjeta
      t.decimal :totalcheque
      t.decimal :total
      t.text :nota

      t.timestamps null: false
    end
  end
end
