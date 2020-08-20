# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_16_173018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_topics", force: :cascade do |t|
    t.integer "course_id"
    t.integer "topic_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "course_users", force: :cascade do |t|
    t.integer "student_id"
    t.integer "course_id"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "start_date"
    t.string "meeting_day"
    t.time "time"
    t.integer "english_reading"
    t.integer "english_writing"
    t.integer "english_speaking"
    t.integer "english_listening"
    t.integer "arabic_reading"
    t.integer "arabic_writing"
    t.integer "arabic_speaking"
    t.integer "arabic_listening"
    t.integer "turkish_reading"
    t.integer "turkish_writing"
    t.integer "turkish_speaking"
    t.integer "turkish_listening"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img_url"
    t.string "summary"
  end

  create_table "student_topics", force: :cascade do |t|
    t.integer "student_id"
    t.integer "topic_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "gender"
    t.integer "age"
    t.string "country_origin"
    t.string "country_residence"
    t.string "country_code"
    t.string "telephone"
    t.integer "english_reading"
    t.integer "english_writing"
    t.integer "english_speaking"
    t.integer "english_listening"
    t.integer "arabic_reading"
    t.integer "arabic_writing"
    t.integer "arabic_speaking"
    t.integer "arabic_listening"
    t.integer "turkish_reading"
    t.integer "turkish_writing"
    t.integer "turkish_speaking"
    t.integer "turkish_listening"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
