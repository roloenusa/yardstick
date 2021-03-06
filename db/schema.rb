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

ActiveRecord::Schema.define(version: 20140630064429) do

  create_table "test_results", force: true do |t|
    t.integer  "test_run_id"
    t.integer  "testcase_id"
    t.boolean  "result"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_results", ["test_run_id"], name: "index_test_results_on_test_run_id"
  add_index "test_results", ["testcase_id"], name: "index_test_results_on_testcase_id"

  create_table "test_runs", force: true do |t|
    t.integer  "testsuite_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_runs", ["testsuite_id"], name: "index_test_runs_on_testsuite_id"

  create_table "testcases", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "steps"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testsuites", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.binary   "data"
  end

  create_table "users", force: true do |t|
    t.string   "name",                   default: ""
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
