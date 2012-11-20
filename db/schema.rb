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

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20121120213748) do
=======
ActiveRecord::Schema.define(:version => 20121120211029) do

  create_table "matches", :force => true do |t|
    t.boolean  "matched"
    t.integer  "receiver_id"
    t.integer  "sender_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end
>>>>>>> f559978b5dd0e71ac1312e8ce3382de7d8948e4c

end
