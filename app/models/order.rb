class Order < ApplicationRecord
  has_many :items
  has_many :users, through: :items
  has_many :product_options, through: :items
  has_many :products, through: :product_options

  scope :incomplete, -> { where(submitted: false) }

  def incomplete_total
    product_options.sum(:price)
  end

  class << self
    def last_order
      self.incomplete.order(:created_at).last
    end
  end
end
