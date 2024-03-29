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

ActiveRecord::Schema.define(:version => 20120222204248) do

  create_table "outage_types", :force => true do |t|
    t.string   "name"
    t.integer  "code"
    t.text     "description"
    t.boolean  "active"
    t.string   "created_by"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "status_reports", :force => true do |t|
    t.string   "name"
    t.integer  "outage_type_id"
    t.string   "date"
    t.integer  "start_time"
    t.integer  "end_time"
    t.string   "affected_groups"
    t.string   "affected_services"
    t.text     "description"
    t.boolean  "scheduled"
    t.boolean  "active"
    t.string   "created_by"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
