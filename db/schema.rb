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

ActiveRecord::Schema.define(version: 2019_08_06_035924) do

  create_table "gold_places", force: :cascade do |t|
    t.string "name"
    t.string "prefecture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gold_plans", force: :cascade do |t|
    t.integer "gold_place_id"
    t.integer "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gold_place_id"], name: "index_gold_plans_on_gold_place_id"
    t.index ["plan_id"], name: "index_gold_plans_on_plan_id"
  end

  create_table "plan_schedules", force: :cascade do |t|
    t.integer "plan_id"
    t.integer "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plan_id"], name: "index_plan_schedules_on_plan_id"
    t.index ["schedule_id"], name: "index_plan_schedules_on_schedule_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gold_place_id"
    t.index ["gold_place_id"], name: "index_plans_on_gold_place_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
