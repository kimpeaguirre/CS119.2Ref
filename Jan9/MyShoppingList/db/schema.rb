ActiveRecord::Schema.define(version: 20150109044833) do

  create_table "items", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.decimal  "price"
    t.integer  "shop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_list_items", force: true do |t|
    t.integer  "shopping_list_id"
    t.integer  "item_id"
    t.decimal  "price"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shopping_lists", force: true do |t|
    t.string   "name"
    t.date     "deadline"
    t.decimal  "total_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
