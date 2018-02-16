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

ActiveRecord::Schema.define(version: 20180216034737) do

  create_table "comments", force: :cascade do |t|
    t.integer "pattern_id"
  end

  create_table "favorite_patterns", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pattern_id"
  end

  create_table "needles", force: :cascade do |t|
    t.string "us_size"
    t.string "name"
    t.integer "pattern_id"
  end

  create_table "other_notions", force: :cascade do |t|
    t.string "notions"
  end

  create_table "patterns", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "content"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "password_digest"
    t.string "username"
    t.string "bio"
    t.string "name"
    t.string "image"
    t.string "uid"
  end

  create_table "yarns", force: :cascade do |t|
    t.string "name"
    t.string "weight"
    t.integer "quantity", default: 1
    t.integer "pattern_id"
  end

end
