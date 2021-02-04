# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_04_013219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cleanups", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "image"
    t.date "date"
    t.integer "duration"
    t.text "comment"
    t.integer "cheer"
    t.bigint "user_id", null: false
    t.bigint "location_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_id"], name: "index_cleanups_on_location_id"
    t.index ["user_id"], name: "index_cleanups_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "avatar"
    t.string "username"
    t.string "password"
    t.integer "age"
    t.string "catchphrase"
    t.integer "park_badge"
    t.integer "playground_badge"
    t.integer "shoreline_badge"
    t.integer "trail_badge"
    t.integer "general_badge"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cleanups", "locations"
  add_foreign_key "cleanups", "users"
end
