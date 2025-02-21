# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_02_20_162231) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "pseudonym"
    t.string "image"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_projects", force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_artists_projects_on_artist_id"
    t.index ["project_id"], name: "index_artists_projects_on_project_id"
  end

  create_table "project_artists", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "artist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_project_artists_on_artist_id"
    t.index ["project_id"], name: "index_project_artists_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "cover"
    t.date "date"
    t.text "tracklist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "artist_id", null: false
    t.index ["artist_id"], name: "index_projects_on_artist_id"
  end

  add_foreign_key "artists_projects", "artists"
  add_foreign_key "artists_projects", "projects"
  add_foreign_key "project_artists", "artists"
  add_foreign_key "project_artists", "projects"
  add_foreign_key "projects", "artists"
end
