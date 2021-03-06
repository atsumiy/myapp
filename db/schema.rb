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

ActiveRecord::Schema.define(version: 2018_12_16_080227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "investment_histories", force: :cascade do |t|
    t.integer "user_portfolio_id"
    t.integer "investment_monthly_value"
    t.integer "update_year"
    t.integer "update_month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "monthly_profit_loss"
    t.integer "temporary_total_value"
  end

  create_table "investment_services", force: :cascade do |t|
    t.string "name"
    t.string "service_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investments", force: :cascade do |t|
    t.integer "investment_service_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_portfolios", force: :cascade do |t|
    t.integer "user_id"
    t.integer "investment_id"
    t.integer "total_value"
    t.integer "reserve_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "next_update_day"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
