# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170609012450) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "trademark"
    t.string   "address"
    t.string   "complement"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "cnpj"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "fullname"
    t.string   "address"
    t.string   "complement"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.integer  "company_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "customers", ["company_id"], name: "index_customers_on_company_id"

  create_table "products", force: :cascade do |t|
    t.string   "description"
    t.decimal  "price"
    t.boolean  "active"
    t.integer  "company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["company_id"], name: "index_products_on_company_id"

  create_table "professionals", force: :cascade do |t|
    t.string   "fullname"
    t.string   "address"
    t.string   "complement"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.boolean  "active"
    t.integer  "company_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "professionals", ["company_id"], name: "index_professionals_on_company_id"

  create_table "schedule_items", force: :cascade do |t|
    t.decimal  "price"
    t.integer  "schedule_id"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "schedule_items", ["product_id"], name: "index_schedule_items_on_product_id"
  add_index "schedule_items", ["schedule_id"], name: "index_schedule_items_on_schedule_id"

  create_table "schedules", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "company_id"
    t.integer  "professional_id"
    t.integer  "customer_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "schedules", ["company_id"], name: "index_schedules_on_company_id"
  add_index "schedules", ["customer_id"], name: "index_schedules_on_customer_id"
  add_index "schedules", ["professional_id"], name: "index_schedules_on_professional_id"

end
