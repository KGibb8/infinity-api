# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180221145626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "hash_id"
    t.bigint "order_id"
    t.bigint "product_option_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_items_on_order_id"
    t.index ["product_option_id"], name: "index_items_on_product_option_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "hash_id"
    t.integer "net"
    t.integer "vat"
    t.integer "total"
    t.boolean "submitted"
    t.date "sent_on"
    t.date "paid_on"
    t.boolean "email_sent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_options", force: :cascade do |t|
    t.string "hash_id"
    t.bigint "product_id"
    t.bigint "barcode"
    t.integer "code"
    t.integer "rrp"
    t.integer "price"
    t.integer "case_size"
    t.integer "unit_size"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_options_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "hash_id"
    t.boolean "organic"
    t.string "name"
    t.string "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "hash_id"
    t.string "username"
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "items", "orders"
  add_foreign_key "items", "product_options"
  add_foreign_key "items", "users"
  add_foreign_key "product_options", "products"
end
