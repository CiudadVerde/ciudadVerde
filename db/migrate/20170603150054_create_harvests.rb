class CreateHarvests < ActiveRecord::Migration
  def change
    create_table :harvests do |t|
      t.references :table, index: true, foreign_key: true
      t.references :center, index: true, foreign_key: true
      t.integer :cantidad
      t.integer :usuario_id
      t.integer :empresa_id
      t.integer :estatus

      t.timestamps null: false
    end
  end
end
