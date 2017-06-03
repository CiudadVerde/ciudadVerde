class CreateInputs < ActiveRecord::Migration
  def change
    create_table :inputs do |t|
      t.integer :empresa_id
      t.integer :patrociandor_id
      t.references :input_type, index: true, foreign_key: true
      t.text :descripcion
      t.decimal :importe

      t.timestamps null: false
    end
  end
end
