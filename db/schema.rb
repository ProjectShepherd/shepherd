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

ActiveRecord::Schema.define(version: 20130914044054) do

  create_table "missing_people", force: true do |t|
    t.boolean  "found"
    t.text     "status"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "age"
    t.integer  "height"
    t.integer  "weight"
    t.string   "sex"
    t.string   "hair_color"
    t.string   "eye_color"
    t.string   "race"
    t.text     "description"
    t.decimal  "initial_location_lat"
    t.decimal  "initial_location_long"
    t.decimal  "found_location_lat"
    t.decimal  "found_location_long"
    t.integer  "submitter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "missing_people", ["submitter_id"], name: "index_missing_people_on_submitter_id"

  create_table "photos", force: true do |t|
    t.integer  "missing_person_id"
    t.integer  "photo_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_attachment_file_name"
    t.string   "photo_attachment_content_type"
    t.integer  "photo_attachment_file_size"
    t.datetime "photo_attachment_updated_at"
  end

  add_index "photos", ["missing_person_id"], name: "index_photos_on_missing_person_id"

  create_table "submitters", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
