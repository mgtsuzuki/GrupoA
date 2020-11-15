class CreateItemRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :item_recipes do |t|
      t.integer :quantidade
      t.belongs_to :produto, null: false, foreign_key: true
      t.belongs_to :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
