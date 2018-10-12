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
class CreateDatabase < ActiveRecord::Migration
  def self.up
    # insert schema.rb here
    ActiveRecord::Schema.define(version: 0) do
    create_table "admin", force: :cascade do |t|
    t.string "user",     limit: 50, null: false
    t.string "password", limit: 32, null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string "nombre", limit: 100, null: false
  end

  create_table "farmacias_departamentos", force: :cascade do |t|
    t.integer "id_farmacia",     limit: 4, null: false
    t.integer "id_departamento", limit: 4, null: false
  end

  add_index "farmacias_departamentos", ["id_departamento"], name: "id_departamento", using: :btree
  add_index "farmacias_departamentos", ["id_farmacia"], name: "id_farmacia", using: :btree

  create_table "general", force: :cascade do |t|
    t.string "valor", limit: 200, null: false
  end

  create_table "links", force: :cascade do |t|
    t.string   "site",            limit: 100, null: false
    t.string   "url",             limit: 500, null: false
    t.datetime "fecha_inicio",                null: false
    t.datetime "ultima_revision",             null: false
    t.string   "id_padre",        limit: 80,  null: false
    t.string   "nombre",          limit: 300
    t.float    "precio",          limit: 24
    t.string   "img",             limit: 300
    t.string   "id_referencia",   limit: 50
    t.boolean  "disponibilidad"
  end

  create_table "precios", force: :cascade do |t|
    t.integer "id_link", limit: 4,  null: false
    t.float   "precio",  limit: 24, null: false
    t.date    "fecha",              null: false
  end

  add_index "precios", ["id_link"], name: "id_link", using: :btree

end

end

  def self.down
    # drop all the tables if you really need
    # to support migration back to version 0
  end
end
