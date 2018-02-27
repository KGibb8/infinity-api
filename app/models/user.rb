class User < ApplicationRecord
  validates :username, uniqueness: { case_sensitive: true },
                       format: { with: /\A[a-zA-Z0-9_\.]*\Z/, multiline: true },
                       presence: true

  has_many :product_options
  has_many :items, through: :product_options
  has_many :orders, through: :product_options
end
