module AreaHelper
    def recipecomingredientes?(recipe)
        flag = true
        recipe.item_recipe.each do |x|
            produto = Produto.find(x.produto_id)
            if x.quantidade  > produto.quantidade 
                flag = false
            end
            if produto.data_validade < Time.now
                flag = false
            end
        end
        return flag
    end

end
