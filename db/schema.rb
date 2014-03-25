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

ActiveRecord::Schema.define(version: 20140325100010) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acknowledges", force: true do |t|
    t.integer  "project_id"
    t.integer  "request_id"
    t.integer  "docs"
    t.integer  "time"
    t.integer  "resources"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fils", force: true do |t|
    t.integer  "project_id"
    t.string   "srs"
    t.string   "brs"
    t.string   "tc"
    t.string   "tp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "kick"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.integer  "project_id"
    t.string   "dev"
    t.string   "content"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.integer  "project_id"
    t.integer  "initiate"
    t.string   "name"
    t.string   "environment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "content"
  end

end
