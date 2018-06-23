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

ActiveRecord::Schema.define(version: 20180622225728) do

  create_table "cargos", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colaboradores", force: :cascade do |t|
    t.string "nome"
    t.string "sexo"
    t.date "dt_nascimento"
    t.string "cpf"
    t.string "rg"
    t.string "endereco"
    t.string "numero"
    t.string "compl"
    t.string "cep"
    t.string "bairro"
    t.string "cidade"
    t.string "estado"
    t.string "telefone"
    t.string "celular"
    t.string "email"
    t.string "foto"
    t.date "dt_inicio"
    t.date "dt_saida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cargo_id"
    t.index ["cargo_id"], name: "index_colaboradores_on_cargo_id"
  end

end
