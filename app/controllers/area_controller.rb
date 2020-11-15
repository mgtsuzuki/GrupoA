class AreaController < ApplicationController
  def index
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.item_recipe.each do |x| 
      produto = Produto.find(x.produto_id)
      produto.quantidade = produto.quantidade - x.quantidade
      produto.save
    end
  end
end
