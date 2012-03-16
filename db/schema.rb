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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120316181808) do

  create_table "card_prices", :force => true do |t|
    t.integer  "period"
    t.float    "total_sales"
    t.integer  "total_sold_items"
    t.float    "avg_sold_price"
    t.float    "max_sold_price"
    t.float    "min_sold_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "card_searches", :force => true do |t|
    t.string   "keywords"
    t.boolean  "name"
    t.boolean  "card_type"
    t.boolean  "ability"
    t.integer  "set"
    t.string   "rarity"
    t.integer  "cmc"
    t.integer  "power"
    t.integer  "toughness"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "b"
    t.boolean  "w"
    t.boolean  "r"
    t.boolean  "g"
    t.boolean  "u"
    t.string   "type_select"
    t.string   "order_type"
  end

  create_table "card_sets", :force => true do |t|
    t.string "name"
    t.string "image_art"
  end

  create_table "cards", :force => true do |t|
    t.string   "name"
    t.string   "spell_type"
    t.text     "description"
    t.string   "set_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "card_number"
    t.string   "mana_cost"
    t.integer  "cmc"
    t.string   "rarity"
    t.string   "other_sets"
    t.text     "flavor"
    t.string   "toughness"
    t.string   "power"
    t.string   "artist"
    t.string   "image"
    t.integer  "set_id"
    t.integer  "multiverse_id"
  end

  create_table "comments", :force => true do |t|
    t.string   "user"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deck_cards", :force => true do |t|
    t.integer "deck_id"
    t.integer "card_id"
    t.integer "quantity"
    t.integer "board"
  end

  create_table "decks", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "deck_format"
    t.integer  "deck_type"
    t.integer  "sub_type"
    t.integer  "views"
    t.float    "avg_cmc"
    t.integer  "blue"
    t.integer  "black"
    t.integer  "red"
    t.integer  "green"
    t.integer  "white"
    t.integer  "deck_score"
    t.text     "description"
    t.string   "name"
    t.integer  "user_id"
    t.integer  "team_id"
    t.float    "est_cost"
    t.boolean  "public"
  end

  create_table "formats", :force => true do |t|
    t.string "name"
  end

  add_index "formats", ["name"], :name => "index_formats_on_name"

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.integer  "dci"
    t.string   "password_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "zip"
    t.text     "description"
    t.string   "dci_password"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
