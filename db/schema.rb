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

ActiveRecord::Schema.define(version: 2018_11_03_171926) do

  create_table "comentarios", force: :cascade do |t|
    t.string "texto"
    t.integer "nota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pessoa_id"
    t.integer "lugar_id"
  end

  create_table "lugares", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.string "cidade"
    t.string "estado"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pessoa_id"
    t.string "endereco"
    t.json "pictures"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
