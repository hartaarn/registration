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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120202202546) do

  create_table "event_registrations", :force => true do |t|
    t.integer  "registrant_id"
    t.integer  "event_id"
    t.boolean  "cancelled"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.text     "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "registers", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "gender"
    t.integer  "age"
    t.string   "phone_number"
    t.string   "email"
    t.text     "comments"
    t.text     "heard_about"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "registrants", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "gender"
    t.integer  "age"
    t.string   "phone_number"
    t.string   "email"
    t.text     "comments"
    t.text     "heard_about"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
