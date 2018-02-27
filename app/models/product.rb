class Product < ApplicationRecord
  has_many :product_options
  has_many :items, through: :product_options
  has_many :orders, through: :items
  has_many :users, through: :items

  validates :name, :brand, presence: true
  validates :organic, inclusion: { in: [true, false] }

  validates :name, uniqueness: { scope: :brand }

  def organic_display
    organic? ? 'Organic' : ''
  end

  class << self
    def brand_names
      Product.distinct.order(:brand).pluck(:brand)
    end

    def brand_names_url_safe
      brand_names.map do |brand|
        brand.downcase.gsub(' ','_').delete('%').delete("'").to_sym
      end
    end
  end
end
