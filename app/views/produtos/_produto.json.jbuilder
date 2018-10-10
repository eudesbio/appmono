json.extract! produto, :id, :user_id, :data, :objeto, :cpu, :hd, :memoria, :obs, :valor, :created_at, :updated_at
json.url produto_url(produto, format: :json)
