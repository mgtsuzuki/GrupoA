class ItemRecipe < ApplicationRecord
  belongs_to :produto
  belongs_to :recipe
end
