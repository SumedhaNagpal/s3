# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20171026053511) do

  create_table "containers", force: :cascade do |t|
    t.integer  "phase"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phase_ones", force: :cascade do |t|
    t.integer  "container_id"
    t.integer  "temperature"
    t.datetime "time_in"
    t.datetime "time_out"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "phase_ones", ["container_id"], name: "index_phase_ones_on_container_id"

  create_table "phase_twos", force: :cascade do |t|
    t.integer  "container_id"
    t.integer  "temperature"
    t.datetime "time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "phase_twos", ["container_id"], name: "index_phase_twos_on_container_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
