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

ActiveRecord::Schema[7.2].define(version: 2025_11_03_073411) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "kaisetus", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "content"
    t.string "pattern"
    t.string "option1"
    t.string "option2"
    t.integer "correct"
    t.text "explanation"
    t.string "e_imageseiko1"
    t.string "e_imageseiko2"
    t.string "e_imageseiko3"
    t.string "e_imageseiko4"
    t.string "e_imageseiko5"
    t.string "e_imageseiko6"
    t.string "e_imageseiko7"
    t.string "e_imageseiko8"
    t.string "e_imageseiko9"
    t.string "e_imageseiko10"
    t.string "e_imageseiko11"
    t.string "e_imageseiko12"
    t.string "e_imageseiko13"
    t.string "e_imageseiko14"
    t.string "e_imageseiko15"
    t.string "e_imageseiko16"
    t.string "e_imageseiko17"
    t.string "e_imageseiko18"
    t.string "e_imageseiko19"
    t.string "e_imageseiko20"
    t.string "e_imageseiko21"
    t.string "e_imageseiko22"
    t.string "e_imageseiko23"
    t.string "e_imageseiko24"
    t.string "e_imageseiko25"
    t.string "e_imagesippai1"
    t.string "e_imagesippai2"
    t.string "e_imagesippai3"
    t.string "e_imagesippai4"
    t.string "e_imagesippai5"
    t.string "e_imagesippai6"
    t.string "e_imagesippai7"
    t.string "e_imagesippai8"
    t.string "e_imagesippai9"
    t.string "e_imagesippai10"
    t.string "e_imagesippai11"
    t.string "e_imagesippai12"
    t.string "e_imagesippai13"
    t.string "e_imagesippai14"
    t.string "e_imagesippai15"
    t.string "e_imagesippai16"
    t.string "e_imagesippai17"
    t.string "e_imagesippai18"
    t.string "e_imagesippai19"
    t.string "e_imagesippai20"
    t.string "e_imagesippai21"
    t.string "e_imagesippai22"
    t.string "e_imagesippai23"
    t.string "e_imagesippai24"
    t.string "e_imagesippai25"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shindans", force: :cascade do |t|
    t.string "question1"
    t.string "question2"
    t.string "question3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_answers", force: :cascade do |t|
    t.integer "q1_id"
    t.integer "q2_id"
    t.integer "q3_id"
    t.integer "q4_id"
    t.integer "q5_id"
    t.integer "q6_id"
    t.integer "q7_id"
    t.integer "q8_id"
    t.integer "q9_id"
    t.integer "q10_id"
    t.integer "q1_yourans"
    t.integer "q2_yourans"
    t.integer "q3_yourans"
    t.integer "q4_yourans"
    t.integer "q5_yourans"
    t.integer "q6_yourans"
    t.integer "q7_yourans"
    t.integer "q8_yourans"
    t.integer "q9_yourans"
    t.integer "q10_yourans"
    t.boolean "q1_isCorrect"
    t.boolean "q2_isCorrect"
    t.boolean "q3_isCorrect"
    t.boolean "q4_isCorrect"
    t.boolean "q5_isCorrect"
    t.boolean "q6_isCorrect"
    t.boolean "q7_isCorrect"
    t.boolean "q8_isCorrect"
    t.boolean "q9_isCorrect"
    t.boolean "q10_isCorrect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
