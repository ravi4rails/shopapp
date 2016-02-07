json.array!(@products) do |product|
  json.extract! product, :id, :product_category_id, :product_bundle_id, :name, :description, :price
  json.url product_url(product, format: :json)
end
