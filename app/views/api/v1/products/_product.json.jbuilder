hide_options ||= nil

json.extract! product, :id, :hash_id, :organic, :brand, :created_at, :updated_at

unless hide_options
  json.product_options product.product_options, partial: '/api/v1/product_options/product_option', as: :product_option
end
