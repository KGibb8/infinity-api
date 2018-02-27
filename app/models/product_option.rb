class ProductOption < ApplicationRecord
  belongs_to :product
  has_many :items
  has_many :orders, through: :items
  has_many :users, through: :items

  validates :code,
            :price,
            presence: true

  validates :price, :code, numericality: true

  validates :rrp, :barcode, numericality: true, allow_nil: true

  scope :by_code, -> { order(:code) }
  scope :by_price, -> { order(:price) }
end
