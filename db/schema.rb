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

ActiveRecord::Schema[7.1].define(version: 2024_08_26_100332) do
  create_table "authors", force: :cascade do |t|
    t.string "name", null: false
    t.text "bio"
    t.integer "no_of_books", default: 1, null: false
    t.string "contact", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.text "description"
    t.string "edition", null: false
    t.date "published_date", null: false
    t.integer "status", default: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "author_id"
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "lending_histories", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "book_id", null: false
    t.date "date_lent", null: false
    t.date "date_to_return", null: false
    t.date "date_returned", null: false
    t.integer "status", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_lending_histories_on_book_id"
    t.index ["student_id"], name: "index_lending_histories_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "code", null: false
    t.string "name", null: false
    t.string "batch", null: false
    t.string "semester", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "books", "authors"
  add_foreign_key "lending_histories", "books"
  add_foreign_key "lending_histories", "students"
end
