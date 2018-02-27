class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :hash_id
      t.integer :net
      t.integer :vat
      t.integer :total
      t.boolean :submitted
      t.date :sent_on
      t.date :paid_on
      t.boolean :email_sent

      t.timestamps
    end
  end
end
