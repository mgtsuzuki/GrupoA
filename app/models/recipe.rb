class Recipe < ApplicationRecord
  has_many :item_recipe
  belongs_to :user
end
