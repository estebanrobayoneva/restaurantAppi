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

ActiveRecord::Schema.define(version: 20171109231010) do

  create_table "items", force: :cascade do |t|
    t.integer  "plate_id"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_items_on_order_id"
    t.index ["plate_id"], name: "index_items_on_plate_id"
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "table_id"
  end

  create_table "plates", force: :cascade do |t|
    t.string   "nombre"
    t.decimal  "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string   "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
