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

ActiveRecord::Schema.define(version: 2020_10_02_034751) do

  create_table "coords", force: :cascade do |t|
    t.float "lat"
    t.float "long"
    t.string "coord_location"
    t.integer "hole_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hole_id"], name: "index_coords_on_hole_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "address"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "holes", force: :cascade do |t|
    t.integer "number"
    t.integer "yards"
    t.integer "par"
    t.integer "handicap"
    t.integer "course_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["course_id"], name: "index_holes_on_course_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "strokes"
    t.integer "chips"
    t.integer "putts"
    t.integer "user_id", null: false
    t.integer "hole_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hole_id"], name: "index_scores_on_hole_id"
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.integer "handicap"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "coords", "holes"
  add_foreign_key "holes", "courses"
  add_foreign_key "scores", "holes"
  add_foreign_key "scores", "users"
end
