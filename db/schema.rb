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

ActiveRecord::Schema.define(version: 20140919130433) do

  create_table "clients", force: true do |t|
    t.string   "account_nbr"
    t.string   "name"
    t.date     "opening_date"
    t.date     "closing_date"
    t.boolean  "complete"
    t.date     "birthdate"
    t.text     "remarks"
    t.date     "input_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "firstname"
    t.integer  "relationship_type"
    t.datetime "since"
    t.datetime "deleted_since"
    t.text     "address"
    t.integer  "domicile"
    t.integer  "nationality"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
