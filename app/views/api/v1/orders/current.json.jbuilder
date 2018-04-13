json.extract! @current_order, :id, :hash_id, :submitted, :total
json.incomplete_total number_to_currency(Utils.to_decimal(@current_order.incomplete_total), precision: 2, unit: '£')
json.items @current_order.items, partial: '/api/v1/items/item', as: :item
