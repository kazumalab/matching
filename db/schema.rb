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

ActiveRecord::Schema.define(version: 20180304052333) do

  create_table "hometowns", force: :cascade do |t|
    t.integer "user_profile_id", limit: 4, null: false
    t.integer "prefecture_id", limit: 4, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "residences", force: :cascade do |t|
    t.integer "user_profile_id", limit: 4, null: false
    t.integer "prefecture_id", limit: 4, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer "user_id", limit: 4, null: false
    t.integer "job_id", limit: 4, null: false
    t.integer "sex_type", limit: 1, null: false
    t.integer "height", limit: 4, null: false
    t.integer "body_type", limit: 1, default: 0, null: false
    t.integer "blood_type", limit: 1, default: 0, null: false
    t.integer "education_background", limit: 1, default: 0, null: false
    t.integer "annual_income", limit: 1, default: 0, null: false
    t.integer "holiday", limit: 1, default: 0, null: false
    t.integer "drink_alcohol", limit: 1, default: 0, null: false
    t.integer "smoking", limit: 1, default: 0, null: false
    t.integer "marriage_history", limit: 1, default: 0, null: false
    t.integer "marriage_intention", limit: 1, default: 0, null: false
    t.integer "first_date_cost", limit: 1, default: 0, null: false
    t.integer "after_first_date_cost", limit: 1, default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", null: false
    t.string "uid", null: false
    t.string "nickname", null: false
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

end
