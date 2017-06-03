class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.references :premio, index: true, foreign_key: true
      t.references :usuario, index: true, foreign_key: true
      t.integer :cantidad
      t.integer :puntos_pre
      t.integer :estatus

      t.timestamps null: false
    end
  end
end
