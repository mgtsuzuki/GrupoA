json.extract! produto, :id, :nome, :quantidade, :data_validade, :tipos_de_quantidade, :user_id, :created_at, :updated_at
json.url produto_url(produto, format: :json)
