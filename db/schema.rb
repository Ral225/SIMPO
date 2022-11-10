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

ActiveRecord::Schema[7.0].define(version: 2022_11_10_134215) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "attendances", force: :cascade do |t|
    t.date "date"
    t.time "starting_hour"
    t.time "ending_hour"
    t.string "attendance_status"
    t.string "week_day"
    t.boolean "public_holiday"
    t.bigint "teammate_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teammate_id"], name: "index_attendances_on_teammate_id"
  end

  create_table "breakdowns", force: :cascade do |t|
    t.bigint "fleet_id", null: false
    t.datetime "breakdown_date"
    t.string "breakdown_description"
    t.string "breakdown_solution"
    t.string "breakdown_status"
    t.datetime "exit_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleet_id"], name: "index_breakdowns_on_fleet_id"
  end

  create_table "fleets", force: :cascade do |t|
    t.string "company_parc_number"
    t.string "fleet_type"
    t.string "brand"
    t.string "current_client"
    t.string "location"
    t.float "counter"
    t.float "average_fuel_consumption"
    t.integer "fuel_capacity"
    t.integer "year_model"
    t.string "serial_number"
    t.date "buying_date"
    t.string "fleet_status"
    t.integer "benne_capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_entries", force: :cascade do |t|
    t.date "date"
    t.bigint "product_id", null: false
    t.float "quantity"
    t.float "unit_price"
    t.float "total_cost"
    t.string "PO_number"
    t.string "BL_number"
    t.bigint "warehouse_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_entries_on_product_id"
    t.index ["warehouse_id"], name: "index_product_entries_on_warehouse_id"
  end

  create_table "product_exits", force: :cascade do |t|
    t.date "date"
    t.bigint "product_id", null: false
    t.float "quantity"
    t.bigint "fleet_id", null: false
    t.bigint "warehouse_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleet_id"], name: "index_product_exits_on_fleet_id"
    t.index ["product_id"], name: "index_product_exits_on_product_id"
    t.index ["warehouse_id"], name: "index_product_exits_on_warehouse_id"
  end

  create_table "productions", force: :cascade do |t|
    t.date "date"
    t.string "weather"
    t.bigint "fleet_id", null: false
    t.float "sarting_counter"
    t.float "ending_counter"
    t.time "starting_hour"
    t.time "ending_hour"
    t.integer "daily_hour_work"
    t.string "contrat_type"
    t.string "work_location"
    t.bigint "teammate_id", null: false
    t.integer "total_mineral_loads"
    t.integer "total_sterile_loads"
    t.integer "total_loads"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fleet_id"], name: "index_productions_on_fleet_id"
    t.index ["teammate_id"], name: "index_productions_on_teammate_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.float "stock_level"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teammates", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "job_title"
    t.string "department"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_teammates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "warehouse_name"
    t.string "warehouse_description"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "attendances", "teammates"
  add_foreign_key "breakdowns", "fleets"
  add_foreign_key "product_entries", "products"
  add_foreign_key "product_entries", "warehouses"
  add_foreign_key "product_exits", "fleets"
  add_foreign_key "product_exits", "products"
  add_foreign_key "product_exits", "warehouses"
  add_foreign_key "productions", "fleets"
  add_foreign_key "productions", "teammates"
  add_foreign_key "teammates", "users"
end
