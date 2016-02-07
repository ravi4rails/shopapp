json.array!(@product_bundles) do |product_bundle|
  json.extract! product_bundle, :id, :category_id, :name, :description
  json.url product_bundle_url(product_bundle, format: :json)
end
