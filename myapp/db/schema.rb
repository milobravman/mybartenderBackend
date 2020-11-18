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

ActiveRecord::Schema.define(version: 2020_11_18_200613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drink_groups", force: :cascade do |t|
    t.bigint "drink_id", null: false
    t.bigint "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drink_id"], name: "index_drink_groups_on_drink_id"
    t.index ["group_id"], name: "index_drink_groups_on_group_id"
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "ingredients"
    t.string "instructions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_groups", force: :cascade do |t|
    t.bigint "food_id", null: false
    t.bigint "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_food_groups_on_food_id"
    t.index ["group_id"], name: "index_food_groups_on_group_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.integer "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer "num_people"
    t.integer "table_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tables", force: :cascade do |t|
    t.integer "seats"
    t.integer "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "drink_groups", "drinks"
  add_foreign_key "drink_groups", "groups"
  add_foreign_key "food_groups", "foods"
  add_foreign_key "food_groups", "groups"
end
