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

ActiveRecord::Schema[7.0].define(version: 2024_07_12_182850) do
  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "journal_entries", force: :cascade do |t|
    t.text "entry"
    t.integer "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_journal_entries_on_client_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "tier"
    t.integer "client_provider_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index "\"provider_client_id\"", name: "index_plans_on_provider_client_id"
    t.index ["client_provider_id"], name: "index_plans_on_client_provider_id"
  end

  create_table "provider_clients", force: :cascade do |t|
    t.integer "provider_id", null: false
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_provider_clients_on_client_id"
    t.index ["provider_id", "client_id"], name: "index_provider_clients_on_provider_id_and_client_id", unique: true
    t.index ["provider_id"], name: "index_provider_clients_on_provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "journal_entries", "clients"
  add_foreign_key "plans", "client_providers"
  add_foreign_key "provider_clients", "clients"
  add_foreign_key "provider_clients", "providers"
end
