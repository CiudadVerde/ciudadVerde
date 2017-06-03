class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.references :user, index: true, foreign_key: true
      t.string :nombre
      t.text :direccion
      t.string :horario
      t.boolean :lunes
      t.boolean :martes
      t.boolean :miercoles
      t.boolean :jueves
      t.boolean :viernes
      t.boolean :sabado
      t.boolean :domingo
      t.decimal :lon
      t.decimal :lat
      t.integer :porcentaje
      t.string :encargado

      t.timestamps null: false
    end
  end
end
