class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.references :user, index: true, foreign_key: true
      t.references :material, index: true, foreign_key: true
      t.integer :puntos

      t.timestamps null: false
    end
  end
end
