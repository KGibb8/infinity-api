json.extract! @current_order, :id, :hash_id, :incomplete_total, :submitted, :total
json.items @current_order.items, partial: '/api/v1/items/item', as: :item
