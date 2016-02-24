json.array!(@products) do |product|
  json.extract! product, :id, :name, :type, :price, :description
  json.url product_url(product, format: :json)
end
