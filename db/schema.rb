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

ActiveRecord::Schema.define(version: 20170603150223) do

  create_table "centers", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "nombre"
    t.text     "direccion"
    t.string   "horario"
    t.boolean  "lunes"
    t.boolean  "martes"
    t.boolean  "miercoles"
    t.boolean  "jueves"
    t.boolean  "viernes"
    t.boolean  "sabado"
    t.boolean  "domingo"
    t.decimal  "lon"
    t.decimal  "lat"
    t.integer  "porcentaje"
    t.string   "encargado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "centers", ["user_id"], name: "index_centers_on_user_id"

  create_table "deliveries", force: :cascade do |t|
    t.integer  "premio_id"
    t.integer  "usuario_id"
    t.integer  "cantidad"
    t.integer  "puntos_pre"
    t.integer  "estatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "deliveries", ["premio_id"], name: "index_deliveries_on_premio_id"
  add_index "deliveries", ["usuario_id"], name: "index_deliveries_on_usuario_id"

  create_table "harvests", force: :cascade do |t|
    t.integer  "table_id"
    t.integer  "center_id"
    t.integer  "cantidad"
    t.integer  "usuario_id"
    t.integer  "empresa_id"
    t.integer  "estatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "harvests", ["center_id"], name: "index_harvests_on_center_id"
  add_index "harvests", ["table_id"], name: "index_harvests_on_table_id"

  create_table "input_types", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "inputs", force: :cascade do |t|
    t.integer  "empresa_id"
    t.integer  "patrociandor_id"
    t.integer  "input_type_id"
    t.text     "descripcion"
    t.decimal  "importe"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "inputs", ["input_type_id"], name: "index_inputs_on_input_type_id"

  create_table "materials", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "prizes", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "cantidad"
    t.string   "puntos"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "prizes", ["user_id"], name: "index_prizes_on_user_id"

  create_table "tables", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "material_id"
    t.integer  "puntos"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "tables", ["material_id"], name: "index_tables_on_material_id"
  add_index "tables", ["user_id"], name: "index_tables_on_user_id"

  create_table "users", force: :cascade do |t|
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
    t.string   "nombre"
    t.string   "rfc"
    t.integer  "tipo"
    t.integer  "center_id"
  end

  add_index "users", ["center_id"], name: "index_users_on_center_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
