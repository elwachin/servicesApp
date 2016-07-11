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

ActiveRecord::Schema.define(version: 20160707235253) do

  create_table "customers", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "lastname",    null: false
    t.string   "address"
    t.string   "country"
    t.string   "city"
    t.string   "postal_code"
    t.integer  "phone"
    t.date     "birthday"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "services_id"
    t.string   "img_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["services_id"], name: "index_profiles_on_services_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "service_id"
    t.string   "title",       null: false
    t.string   "description", null: false
    t.string   "image_url",   null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["service_id"], name: "index_reviews_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "name"
    t.integer  "service_type"
    t.string   "description"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["customer_id"], name: "index_services_on_customer_id"
  end

end