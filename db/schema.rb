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

ActiveRecord::Schema.define(version: 20141229122211) do

  create_table "entities", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "address",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entity_roles", force: :cascade do |t|
    t.integer  "entity_id"
    t.integer  "notice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entity_roles", ["entity_id"], name: "index_entity_roles_on_entity_id"
  add_index "entity_roles", ["notice_id"], name: "index_entity_roles_on_notice_id"

  create_table "notices", force: :cascade do |t|
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
