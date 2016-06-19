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

ActiveRecord::Schema.define(version: 20160618105541) do

  create_table "dam_classifications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dam_classifications_resources", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "dam_resource_id",       null: false
    t.integer "dam_classification_id", null: false
  end

  create_table "dam_download_reasons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dam_download_reasons_downloads", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "dam_download_reason_id", null: false
    t.integer "dam_download_id",        null: false
  end

  create_table "dam_downloads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "why_use"
    t.integer  "downloadable_id"
    t.string   "downloadable_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.date     "when_use_from"
    t.date     "when_use_to"
  end

  create_table "dam_histories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "trackable_type"
    t.integer  "trackable_id"
    t.text     "notes",                 limit: 65535
    t.integer  "dam_user_id"
    t.integer  "dam_history_reason_id"
    t.integer  "track_action",                        default: 0
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.index ["trackable_type", "trackable_id"], name: "index_dam_histories_on_trackable_type_and_trackable_id", using: :btree
  end

  create_table "dam_history_reasons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "reason"
    t.integer  "track_action", default: 0
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "dam_locations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dam_locations_resources", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "dam_resource_id", null: false
    t.integer "dam_location_id", null: false
  end

  create_table "dam_media", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "media_file"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "dam_resource_id"
  end

  create_table "dam_people", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dam_people_resources", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "dam_resource_id", null: false
    t.integer "dam_person_id",   null: false
  end

  create_table "dam_resources", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "caption",         limit: 65535
    t.string   "file_type"
    t.text     "description",     limit: 65535
    t.string   "copyright_owner"
    t.text     "restrictions",    limit: 65535
    t.string   "owner_name"
    t.date     "date"
    t.date     "expiry_date"
    t.boolean  "is_consent"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "asset"
    t.string   "consent_file"
    t.integer  "dam_media_id"
    t.integer  "status",                        default: 0
    t.integer  "dam_user_id"
  end

  create_table "dam_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "access_level",           default: 0
    t.index ["email"], name: "index_dam_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_dam_users_on_reset_password_token", unique: true, using: :btree
  end

end
