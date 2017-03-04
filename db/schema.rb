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

ActiveRecord::Schema.define(version: 20170303165400) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer  "cat_code"
    t.string   "cat_title"
    t.text     "cat_detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "cust_code"
    t.string   "cust_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "prod_code"
    t.string   "prod_name"
    t.string   "category"
    t.integer  "tp_rate"
    t.integer  "category_id"
    t.integer  "saledetail_id"
    t.integer  "purchasedetail_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
    t.index ["purchasedetail_id"], name: "index_products_on_purchasedetail_id", using: :btree
    t.index ["saledetail_id"], name: "index_products_on_saledetail_id", using: :btree
  end

  create_table "purchasedetails", force: :cascade do |t|
    t.integer  "doc_no"
    t.string   "sup_name"
    t.string   "prod_name"
    t.integer  "prod_qty"
    t.integer  "purchase_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["purchase_id"], name: "index_purchasedetails_on_purchase_id", using: :btree
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "doc_no"
    t.date     "doc_date"
    t.integer  "sup_code"
    t.integer  "sup_name"
    t.integer  "supplier_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["supplier_id"], name: "index_purchases_on_supplier_id", using: :btree
  end

  create_table "saledetails", force: :cascade do |t|
    t.integer  "inv_no"
    t.date     "inv_date"
    t.string   "cust_name"
    t.string   "prod_name"
    t.integer  "sale_qty"
    t.integer  "tp_rate"
    t.integer  "gross_sale"
    t.integer  "tax"
    t.integer  "net_sale"
    t.integer  "discount"
    t.integer  "payable_amount"
    t.integer  "sale_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["sale_id"], name: "index_saledetails_on_sale_id", using: :btree
  end

  create_table "sales", force: :cascade do |t|
    t.integer  "inv_no"
    t.date     "inv_date"
    t.integer  "cust_code"
    t.string   "cust_name"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_sales_on_customer_id", using: :btree
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer  "sup_code"
    t.string   "sup_name"
    t.string   "sup_location"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "products", "categories"
  add_foreign_key "products", "purchasedetails"
  add_foreign_key "products", "saledetails"
  add_foreign_key "purchasedetails", "purchases"
  add_foreign_key "purchases", "suppliers"
  add_foreign_key "saledetails", "sales"
  add_foreign_key "sales", "customers"
end
