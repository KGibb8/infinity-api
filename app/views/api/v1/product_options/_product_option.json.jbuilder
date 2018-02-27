json.extract! product_option, :id, :hash_id, :barcode, :code, :case_size, :unit_size, :unit
json.rrp number_to_currency(Utils.to_decimal(product_option.rrp), precision: 2, unit: '£')
json.price number_to_currency(Utils.to_decimal(product_option.price), precision: 2, unit: '£')
