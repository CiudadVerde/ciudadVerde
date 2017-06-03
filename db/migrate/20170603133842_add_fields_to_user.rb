class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string
    add_column :users, :rfc, :string
    add_column :users, :tipo, :integer
  end
end
