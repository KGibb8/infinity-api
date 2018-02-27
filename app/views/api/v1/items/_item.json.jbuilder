json.product_option item.product_option, partial: '/api/v1/product_options/product_option', as: :product_option
json.product do
  json.id item.product.id
  json.hash_id item.product.hash_id
  json.name item.product.name
  json.brand item.product.brand
  json.organic item.product.organic_display
end
