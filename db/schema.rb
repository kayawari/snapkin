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

ActiveRecord::Schema.define(version: 20170731133343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diaries", force: :cascade do |t|
    t.string "title", null: false
    t.text "content", null: false
    t.bigint "image_id_id", null: false
    t.string "lat", null: false, comment: "緯度"
    t.string "lng", null: false, comment: "経度"
    t.bigint "category_id_id"
    t.datetime "journey_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id_id"], name: "index_diaries_on_category_id_id"
    t.index ["image_id_id"], name: "index_diaries_on_image_id_id"
  end

  create_table "diary_categories", force: :cascade do |t|
    t.bigint "user_id_id"
    t.string "name"
    t.string "color", limit: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id_id"], name: "index_diary_categories_on_user_id_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", limit: 100, null: false
    t.string "crypted_password", null: false
    t.string "salt", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "nick_name"
    t.string "default_lat", null: false, comment: "デフォルトの緯度"
    t.string "default_lng", null: false, comment: "デフォルトの経度"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end