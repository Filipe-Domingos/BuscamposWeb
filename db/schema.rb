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

ActiveRecord::Schema.define(version: 20160427023153) do

  create_table "empresas", force: :cascade do |t|
    t.string   "nomeEmpresa"
    t.string   "cnpj"
    t.string   "telefone"
    t.string   "endereco"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "linhas", force: :cascade do |t|
    t.string   "nome"
    t.integer  "ponto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "linhas", ["ponto_id"], name: "index_linhas_on_ponto_id"

  create_table "onibus", force: :cascade do |t|
    t.string   "placa"
    t.integer  "empresa_id"
    t.integer  "num_assento"
    t.boolean  "assento_especial"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "onibus", ["empresa_id"], name: "index_onibus_on_empresa_id"

  create_table "pontos", force: :cascade do |t|
    t.string   "rua"
    t.string   "bairro"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
