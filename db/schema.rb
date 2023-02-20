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

ActiveRecord::Schema[7.0].define(version: 2023_02_20_174951) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "run_runner_joins", force: :cascade do |t|
    t.integer "runner_id"
    t.integer "run_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runners", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "neighborhood"
    t.integer "age"
    t.text "bio"
    t.string "running_deets"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runs", force: :cascade do |t|
    t.string "run_location"
    t.datetime "when"
    t.integer "mileage"
    t.integer "run_type"
    t.string "pace"
    t.integer "creator_id"
    t.string "integer"
    t.boolean "bevs_after"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wx_cards", force: :cascade do |t|
    t.string "location"
    t.string "forecast"
    t.text "suggestion"
    t.integer "runner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
