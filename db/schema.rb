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

ActiveRecord::Schema[7.0].define(version: 2022_08_06_153950) do
  create_table "bookings", force: :cascade do |t|
    t.time "from_time"
    t.time "to_time"
    t.string "status"
    t.integer "user_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_bookings_on_service_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "salons", force: :cascade do |t|
    t.string "company_name"
    t.string "gstin"
    t.string "pan_number"
    t.text "address"
    t.integer "no_of_seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.decimal "price"
    t.integer "salon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salon_id"], name: "index_services_on_salon_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "work_schedules", force: :cascade do |t|
    t.integer "week_day"
    t.time "opens_at"
    t.time "closes_at"
    t.integer "salon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["salon_id"], name: "index_work_schedules_on_salon_id"
  end

  add_foreign_key "bookings", "services"
  add_foreign_key "bookings", "users"
  add_foreign_key "services", "salons"
  add_foreign_key "work_schedules", "salons"
end
