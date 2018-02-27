require 'csv'

namespace :catalogue do
  task :seed do
    data = CSV.table(Rails.root.join("db", "data", "catalogue.csv"))

    ActiveRecord::Base.transaction do
      data.each_with_index do |row, i|
        next if row[:brand].blank? || row[:name].blank? || row[:price].blank?
        prev_product = Product.find_by(name: row[:name])
        if prev_product
          prev_product.product_options.new(
            code: row[:code],
            case_size: row[:case_size],
            unit_size: row[:unit_size],
            price: row[:price].try(:*, 10**2),
            rrp: row[:rrp].try(:*, 10**2),
            unit: row[:unit],
            barcode: row[:barcode]
          )
          prev_product.save
        else
          product = Product.new(
            name: row[:name],
            organic: (row[:organic] == 'organic'),
            brand: row[:brand]
          )
          product.product_options.new(
            code: row[:code],
            case_size: row[:case_size],
            unit_size: row[:unit_size],
            price: row[:price].try(:*, 10**2),
            rrp: row[:rrp].try(:*, 10**2),
            unit: row[:unit],
            barcode: row[:barcode]
          )
          product.save!
        end
      end
    end
  end
end
