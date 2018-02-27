class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :hash_id
      t.boolean :organic
      t.string :name
      t.string :brand

      t.timestamps
    end
  end
end
