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

ActiveRecord::Schema.define(:version => 20130921154137) do

  create_table "mlb_players", :force => true do |t|
    t.string   "sports_data_id"
    t.string   "first_name"
    t.string   "preferred_first"
    t.string   "last_name"
    t.string   "preferred_last"
    t.string   "bat_hand"
    t.string   "throw_hand"
    t.integer  "weight"
    t.integer  "height"
    t.datetime "birthdate"
    t.string   "birthstate"
    t.string   "birthcountry"
    t.string   "highschool"
    t.string   "college"
    t.datetime "pro_debut"
    t.string   "position"
    t.integer  "ab"
    t.integer  "ap"
    t.decimal  "avg"
    t.integer  "lob"
    t.integer  "pcount"
    t.integer  "rbi"
    t.integer  "error"
    t.decimal  "abhr"
    t.integer  "bip"
    t.decimal  "babip"
    t.decimal  "bbk"
    t.decimal  "bbpa"
    t.decimal  "gofo"
    t.decimal  "iso"
    t.decimal  "obp"
    t.decimal  "ops"
    t.decimal  "seca"
    t.decimal  "slg"
    t.integer  "tb"
    t.integer  "xbh"
    t.integer  "h"
    t.integer  "s"
    t.integer  "d"
    t.integer  "t"
    t.integer  "hr"
    t.integer  "bb"
    t.integer  "ibb"
    t.integer  "hbp"
    t.integer  "unearned"
    t.integer  "earned"
    t.integer  "total"
    t.integer  "klook"
    t.integer  "kswing"
    t.integer  "ktotal"
    t.integer  "ball"
    t.integer  "iball"
    t.integer  "dirtball"
    t.integer  "foul"
    t.integer  "po"
    t.integer  "fo"
    t.integer  "fidp"
    t.integer  "go"
    t.integer  "gidp"
    t.integer  "lo"
    t.integer  "lidp"
    t.integer  "sacfly"
    t.integer  "sachit"
    t.integer  "caught"
    t.integer  "stolen"
    t.integer  "start"
    t.integer  "play"
    t.integer  "finish"
    t.integer  "complete"
  end

  create_table "player_mlbs", :force => true do |t|
    t.string   "sports_data_id"
    t.string   "first_name"
    t.string   "preferred_first"
    t.string   "last_name"
    t.string   "preferred_last"
    t.string   "bat_hand"
    t.string   "throw_hand"
    t.integer  "weight"
    t.integer  "height"
    t.datetime "birthdate"
    t.string   "birthstate"
    t.string   "birthcountry"
    t.string   "highschool"
    t.string   "college"
    t.datetime "pro_debut"
    t.string   "position"
    t.integer  "ab"
    t.integer  "ap"
    t.decimal  "avg"
    t.integer  "lob"
    t.integer  "pcount"
    t.integer  "rbi"
    t.integer  "error"
    t.decimal  "abhr"
    t.integer  "bip"
    t.decimal  "babip"
    t.decimal  "bbk"
    t.decimal  "bbpa"
    t.decimal  "gofo"
    t.decimal  "iso"
    t.decimal  "obp"
    t.decimal  "ops"
    t.decimal  "seca"
    t.decimal  "slg"
    t.integer  "tb"
    t.integer  "xbh"
    t.integer  "h"
    t.integer  "s"
    t.integer  "d"
    t.integer  "t"
    t.integer  "hr"
    t.integer  "bb"
    t.integer  "ibb"
    t.integer  "hbp"
    t.integer  "unearned"
    t.integer  "earned"
    t.integer  "total"
    t.integer  "klook"
    t.integer  "kswing"
    t.integer  "ktotal"
    t.integer  "ball"
    t.integer  "iball"
    t.integer  "dirtball"
    t.integer  "foul"
    t.integer  "po"
    t.integer  "fo"
    t.integer  "fidp"
    t.integer  "go"
    t.integer  "gidp"
    t.integer  "lo"
    t.integer  "lidp"
    t.integer  "sacfly"
    t.integer  "sachit"
    t.integer  "caught"
    t.integer  "stolen"
    t.integer  "start"
    t.integer  "play"
    t.integer  "finish"
    t.integer  "complete"
    t.decimal  "ip_1"
    t.decimal  "ip_2"
    t.integer  "bf"
    t.decimal  "era"
    t.decimal  "k9"
    t.decimal  "whip"
    t.integer  "win"
    t.integer  "loss"
    t.integer  "saves"
    t.integer  "qstart"
    t.integer  "shutout"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end