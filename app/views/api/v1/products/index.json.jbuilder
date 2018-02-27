json.array! @products do |product|
  json.id product.id
  json.hash_id product.hash_id
  json.name product.name
  json.brand product.brand
  json.organic product.organic_display
  json.product_options product.product_options, partial: '/api/v1/product_options/product_option', as: :product_option
end
