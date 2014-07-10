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

ActiveRecord::Schema.define(version: 20140710190637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attribute_types", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "type"
    t.boolean  "opcional",      default: false
    t.boolean  "multivalued",   default: false
    t.integer  "model_type_id"
    t.integer  "supertype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attribute_types", ["model_type_id"], name: "index_attribute_types_on_model_type_id", using: :btree
  add_index "attribute_types", ["supertype_id"], name: "index_attribute_types_on_supertype_id", using: :btree

  create_table "model_types", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "supertype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "model_types", ["supertype_id"], name: "index_model_types_on_supertype_id", using: :btree

end
