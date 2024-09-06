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

ActiveRecord::Schema[7.1].define(version: 2024_06_20_060147) do
  create_table "banks", force: :cascade do |t|
    t.integer "dinero"
    t.integer "deuda"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_banks_on_user_id"
  end

  create_table "data", force: :cascade do |t|
    t.integer "dinero"
    t.integer "prestamo"
    t.integer "meses"
    t.integer "User_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["User_id"], name: "index_data_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "usuario"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.decimal "dinero", default: "0.0"
    t.decimal "deuda", default: "0.0"
  end

  add_foreign_key "banks", "users"
  add_foreign_key "data", "Users"
end
