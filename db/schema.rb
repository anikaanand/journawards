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

ActiveRecord::Schema.define(version: 20150622204423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "awards", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.string   "description"
    t.string   "notes"
    t.string   "entry_fee"
    t.string   "prize"
    t.date     "deadline"
    t.string   "entrant_type"
    t.string   "medium_type"
    t.string   "content_type"
    t.string   "subject_type"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "reviewed"
    t.boolean  "approved"
  end

  add_index "awards", ["organization_id"], name: "index_awards_on_organization_id", using: :btree

  create_table "awards_users", id: false, force: :cascade do |t|
    t.integer "award_id"
    t.integer "user_id"
  end

  add_index "awards_users", ["award_id", "user_id"], name: "index_awards_users_on_award_id_and_user_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "admin"
  end

  add_foreign_key "awards", "organizations"
end
