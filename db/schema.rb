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

ActiveRecord::Schema.define(:version => 20130820194837) do

  create_table "diesel_prices", :force => true do |t|
    t.float    "us_national_average"
    t.float    "east_coast"
    t.float    "new_england"
    t.float    "central_atlantic"
    t.float    "lower_atlantic"
    t.float    "midwest"
    t.float    "gulf_coast"
    t.float    "rocky_mountains"
    t.float    "west_coast"
    t.float    "california"
    t.date     "effective_date"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.float    "west_coast_less_california"
  end

  create_table "regular_prices", :force => true do |t|
    t.float    "us_national_average"
    t.float    "east_coast"
    t.float    "new_england"
    t.float    "central_atlantic"
    t.float    "lower_atlantic"
    t.float    "midwest"
    t.float    "gulf_coast"
    t.float    "rocky_mountains"
    t.float    "west_coast"
    t.float    "california"
    t.date     "effective_date"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.float    "colorado"
    t.float    "florida"
    t.float    "massachusetts"
    t.float    "minnesota"
    t.float    "new_york"
    t.float    "ohio"
    t.float    "texas"
    t.float    "washington"
    t.float    "boston"
    t.float    "chicago"
    t.float    "cleveland"
    t.float    "denver"
    t.float    "houston"
    t.float    "los_angeles"
    t.float    "miami"
    t.float    "new_york_city"
    t.float    "san_francisco"
    t.float    "seattle"
    t.float    "west_coast_less_california"
  end

  create_table "stats", :force => true do |t|
    t.integer  "count"
    t.string   "controller"
    t.string   "action"
    t.string   "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
