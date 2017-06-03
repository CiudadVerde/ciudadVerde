class AddCentroReferencesToUser < ActiveRecord::Migration
  def change
    add_reference :users, :center, index: true, foreign_key: true
  end
end
