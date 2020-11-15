json.extract! item_recipe, :id, :quantidade, :produto_id, :recipe_id, :created_at, :updated_at
json.url item_recipe_url(item_recipe, format: :json)
