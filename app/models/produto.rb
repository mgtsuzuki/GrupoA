class Produto < ApplicationRecord
  belongs_to :user
  has_many :item_recipe
  enum tipos_de_quantidade: {
    "kg" => "kg",
    "pacote" => "pacote",
    "lata" => "lata"
  }
end
