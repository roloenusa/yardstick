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

ActiveRecord::Schema.define(version: 20140504232610) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "test_results", force: true do |t|
    t.integer  "test_run_id"
    t.integer  "testcase_id"
    t.boolean  "result"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_results", ["test_run_id"], name: "index_test_results_on_test_run_id", using: :btree
  add_index "test_results", ["testcase_id"], name: "index_test_results_on_testcase_id", using: :btree

  create_table "test_runs", force: true do |t|
    t.integer  "testsuite_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_runs", ["testsuite_id"], name: "index_test_runs_on_testsuite_id", using: :btree

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
  end

end
