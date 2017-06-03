class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :cantidad
      t.string :puntos
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
