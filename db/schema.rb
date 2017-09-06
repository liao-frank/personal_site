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

ActiveRecord::Schema.define(version: 20170902201139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "project_images", force: :cascade do |t|
    t.integer "project_id"
    t.text "caption"
    t.string "img_url"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_skills", force: :cascade do |t|
    t.integer "project_id"
    t.integer "skill_id"
    t.text "description"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "meta"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "snippet"
    t.text "description"
    t.string "dates"
    t.string "collaboration"
    t.string "cover_url"
    t.integer "order"
    t.string "visibility"
    t.string "site_link"
    t.string "github_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.string "dev_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
