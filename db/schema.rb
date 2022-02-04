# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_01_031512) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.string "categorable_type"
    t.integer "categorable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categorable_type", "categorable_id"], name: "index_categories_on_categorable"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.float "tax"
    t.string "itemable_type"
    t.integer "itemable_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["itemable_type", "itemable_id"], name: "index_items_on_itemable"
  end

  create_table "notes", force: :cascade do |t|
    t.string "content"
    t.string "notable_type"
    t.integer "notable_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["notable_type", "notable_id"], name: "index_notes_on_notable"
  end

  create_table "receipts", force: :cascade do |t|
    t.integer "store_id"
    t.integer "category_id"
    t.float "total_price"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "unit_or_building"
    t.string "street_number"
    t.string "street_name"
    t.string "suburb"
    t.integer "postcode"
    t.string "city"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "first_name"
    t.string "last_name"
    t.text "email_address"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
