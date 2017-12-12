json.extract! sale, :id, :name, :total, :created_at, :updated_at
json.url sale_url(sale, format: :json)
