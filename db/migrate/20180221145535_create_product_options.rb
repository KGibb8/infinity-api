class CreateProductOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :product_options do |t|
      t.string :hash_id
      t.references :product, foreign_key: true
      t.integer :barcode, limit: 8
      t.integer :code
      t.integer :rrp
      t.integer :price
      t.integer :case_size
      t.integer :unit_size
      t.string :unit

      t.timestamps
    end
  end
end
