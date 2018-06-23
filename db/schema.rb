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

ActiveRecord::Schema.define(version: 2018_06_23_185255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listers", force: :cascade do |t|
    t.string "email", default: "", null: false
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
    t.index ["email"], name: "index_listers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_listers_on_reset_password_token", unique: true
  end

  create_table "rental_listings", force: :cascade do |t|
    t.bigint "lister_id", null: false
    t.integer "price", null: false
    t.integer "bedrooms", null: false
    t.integer "bathrooms", null: false
    t.integer "size_in_metre_square", null: false
    t.text "description_gr", null: false
    t.text "description_en", null: false
    t.integer "telephone", null: false
    t.integer "zip_code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lister_id"], name: "index_rental_listings_on_lister_id"
  end

  add_foreign_key "rental_listings", "listers"
end
