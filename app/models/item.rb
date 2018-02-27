class Item < ApplicationRecord
  belongs_to :order
  belongs_to :product_option
  belongs_to :user

  delegate :product, to: :product_option, allow_nil: false
end
