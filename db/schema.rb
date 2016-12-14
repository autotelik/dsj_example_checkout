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

ActiveRecord::Schema.define(version: 20161214112657) do

  create_table "dsj_collectors", force: :cascade do |t|
    t.string   "state",      null: false
    t.string   "reference",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reference"], name: "index_dsj_collectors_on_reference"
    t.index ["state"], name: "index_dsj_collectors_on_state"
  end

  create_table "dsj_collectors_data_nodes", force: :cascade do |t|
    t.integer  "collector_id",  null: false
    t.integer  "form_field_id", null: false
    t.text     "field_value"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["collector_id", "form_field_id"], name: "collectors_data_nodes_collector_id_form_field_id", unique: true
  end

  create_table "dsj_form_fields", force: :cascade do |t|
    t.integer  "form_id",                        null: false
    t.string   "field",              limit: 100, null: false
    t.string   "field_type",                     null: false
    t.string   "field_presentation", limit: 100
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["field"], name: "index_dsj_form_fields_on_field"
    t.index ["form_id"], name: "index_dsj_form_fields_on_form_id"
  end

  create_table "dsj_forms", force: :cascade do |t|
    t.string   "form_name",                null: false
    t.string   "presentation", limit: 100
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["form_name"], name: "index_dsj_forms_on_form_name"
  end

  create_table "dsj_questions", force: :cascade do |t|
    t.integer  "form_field_id", null: false
    t.text     "raw_text"
    t.string   "I18n_keyd"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["I18n_keyd"], name: "index_dsj_questions_on_I18n_keyd"
  end

end
