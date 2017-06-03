class CreateInputTypes < ActiveRecord::Migration
  def change
    create_table :input_types do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
