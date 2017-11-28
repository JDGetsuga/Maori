class CreateDetailclasses < ActiveRecord::Migration
  def change
    create_table :detailclasses do |t|
      t.references :client, index: true, foreign_key: true
      t.references :membership, index: true, foreign_key: true
      t.string :estado
      t.text :nota
      t.references :headerclass, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
