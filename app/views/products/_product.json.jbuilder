json.extract! product, :id, :name, :price, :quantity, :description, :category, :image_url, :long_description, :created_at, :updated_at
json.url product_url(product, format: :json)
