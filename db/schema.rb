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

ActiveRecord::Schema.define(:version => 20130526100300) do

  create_table "calendars", :force => true do |t|
    t.date     "date"
    t.time     "starts_at"
    t.time     "ends_at"
    t.string   "location"
    t.string   "room_number"
    t.text     "info"
    t.integer  "group_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "calendars", ["group_id"], :name => "index_calendars_on_group_id"

  create_table "groups", :force => true do |t|
    t.string   "group_name"
    t.string   "group_type"
    t.string   "affiliation"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
  end

  add_index "groups", ["user_id"], :name => "index_groups_on_user_id"

  create_table "posts", :force => true do |t|
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "group_id"
    t.integer  "user_id"
  end

  add_index "posts", ["user_id"], :name => "index_posts_on_user_id"

  create_table "profiles", :force => true do |t|
    t.string   "group_mission"
    t.string   "text_block_body"
    t.string   "text_block_content"
    t.integer  "group_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "profiles", ["group_id"], :name => "index_profiles_on_group_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "surname"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
