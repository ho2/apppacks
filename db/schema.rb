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

ActiveRecord::Schema.define(:version => 20130226103321) do

  create_table "imei_packages", :force => true do |t|
    t.integer  "package_id"
    t.string   "imei"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "imei_packages", ["imei"], :name => "index_imei_packages_on_imei"

  create_table "packages", :force => true do |t|
    t.string   "action"
    t.string   "packageName"
    t.integer  "versionNumber"
    t.string   "downloadPath"
    t.string   "packageNamePath"
    t.string   "packageNotation"
    t.boolean  "forceUpdate"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
