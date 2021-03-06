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

ActiveRecord::Schema.define(version: 20160121134511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.integer  "year"
    t.string   "rated"
    t.string   "runtime"
    t.string   "genre"
    t.string   "director"
    t.string   "writer"
    t.text     "actors",              default: [], array: true
    t.text     "plot"
    t.string   "country"
    t.text     "awards",              default: [], array: true
    t.string   "imdbRating"
    t.string   "imdbID"
    t.string   "poster_file_name"
    t.string   "poster_content_type"
    t.integer  "poster_file_size"
    t.datetime "poster_updated_at"
  end

  create_table "scenes", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "movie_id"
    t.text     "description"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "what"
    t.string   "icon"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "scene_shot_file_name"
    t.string   "scene_shot_content_type"
    t.integer  "scene_shot_file_size"
    t.datetime "scene_shot_updated_at"
    t.string   "location_shot_file_name"
    t.string   "location_shot_content_type"
    t.integer  "location_shot_file_size"
    t.datetime "location_shot_updated_at"
  end

  add_index "scenes", ["movie_id"], name: "index_scenes_on_movie_id", using: :btree
  add_index "scenes", ["user_id", "created_at"], name: "index_scenes_on_user_id_and_created_at", using: :btree
  add_index "scenes", ["user_id"], name: "index_scenes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "scenes", "movies"
  add_foreign_key "scenes", "users"
end
