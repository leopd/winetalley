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

ActiveRecord::Schema.define(:version => 20120123234255) do

  create_table "bottlechanges", :force => true do |t|
    t.text     "comment"
    t.integer  "drinker_id"
    t.integer  "addremove"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bottlechanges", ["drinker_id"], :name => "index_bottlechanges_on_drinker_id"

  create_table "drinkers", :force => true do |t|
    t.string   "name"
    t.integer  "talley"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
