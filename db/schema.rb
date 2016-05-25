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

ActiveRecord::Schema.define(version: 20160525204344) do

  create_table "hardware_triggers", force: :cascade do |t|
    t.integer  "pet_weight"
    t.integer  "food_weight"
    t.integer  "water_volume"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "petinfos", force: :cascade do |t|
    t.integer  "pet_weight"
    t.integer  "food_weight"
    t.integer  "water_volume"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.integer  "user_id"
    t.boolean  "admin"
    t.string   "contactnumber"
    t.string   "remember_digest"
  end

end
