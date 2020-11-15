class AddRelationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :produto, :has_many
    add_column :users, :recipe, :has_many
  end
end
