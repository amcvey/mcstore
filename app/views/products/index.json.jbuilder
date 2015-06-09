json.array!(@products) do |product|
  json.extract! product, :id, :photo, :nombre, :price, :description, :stock, :category
  json.url product_url(product, format: :json)
end
