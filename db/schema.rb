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

ActiveRecord::Schema.define(version: 20171127234042) do

  create_table "checks", force: :cascade do |t|
    t.string   "numero"
    t.string   "nombre"
    t.string   "banco"
    t.decimal  "cantidad"
    t.integer  "sale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "checks", ["sale_id"], name: "index_checks_on_sale_id"

  create_table "clients", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cedula"
    t.string   "genero"
    t.string   "telefono"
    t.string   "correo"
    t.date     "fechanacimiento"
    t.text     "direccion"
    t.string   "ciudad"
    t.string   "provincia"
    t.string   "pais"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "detailclasses", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "membership_id"
    t.string   "estado"
    t.text     "nota"
    t.integer  "headerclass_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "detailclasses", ["client_id"], name: "index_detailclasses_on_client_id"
  add_index "detailclasses", ["headerclass_id"], name: "index_detailclasses_on_headerclass_id"
  add_index "detailclasses", ["membership_id"], name: "index_detailclasses_on_membership_id"

  create_table "headerclasses", force: :cascade do |t|
    t.date     "fecha"
    t.time     "horainicio"
    t.time     "horafin"
    t.integer  "capacidadmaxima"
    t.integer  "registrados"
    t.integer  "service_id"
    t.integer  "schedule_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "headerclasses", ["schedule_id"], name: "index_headerclasses_on_schedule_id"
  add_index "headerclasses", ["service_id"], name: "index_headerclasses_on_service_id"

  create_table "memberships", force: :cascade do |t|
    t.integer  "client_id"
    t.date     "fechainicio"
    t.date     "fechaexpiracion"
    t.integer  "service_id"
    t.integer  "price_id"
    t.integer  "entradastotales"
    t.integer  "entradasfaltantes"
    t.string   "estado"
    t.integer  "sale_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "memberships", ["client_id"], name: "index_memberships_on_client_id"
  add_index "memberships", ["price_id"], name: "index_memberships_on_price_id"
  add_index "memberships", ["sale_id"], name: "index_memberships_on_sale_id"
  add_index "memberships", ["service_id"], name: "index_memberships_on_service_id"

  create_table "prices", force: :cascade do |t|
    t.string   "nombretarifa"
    t.integer  "sesiones"
    t.integer  "service_id"
    t.decimal  "precio"
    t.decimal  "descuento"
    t.integer  "estado"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "prices", ["service_id"], name: "index_prices_on_service_id"

  create_table "product_quantities", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "quantity"
    t.integer  "sale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "product_quantities", ["product_id"], name: "index_product_quantities_on_product_id"
  add_index "product_quantities", ["sale_id"], name: "index_product_quantities_on_sale_id"

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.decimal  "preciocompra"
    t.decimal  "precioventa"
    t.integer  "cantidad"
    t.integer  "cantidadminima"
    t.decimal  "ganancia"
    t.integer  "provider_id"
    t.string   "tipo"
    t.boolean  "estado"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "products", ["provider_id"], name: "index_products_on_provider_id"

  create_table "providers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "ruc"
    t.string   "telefono"
    t.text     "direccion"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.date     "fecha"
    t.date     "hora"
    t.integer  "client_id"
    t.integer  "user_id"
    t.integer  "membership_id"
    t.decimal  "totalefectivo"
    t.decimal  "totaltarjeta"
    t.decimal  "totalcheque"
    t.decimal  "total"
    t.text     "nota"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "sales", ["client_id"], name: "index_sales_on_client_id"
  add_index "sales", ["membership_id"], name: "index_sales_on_membership_id"
  add_index "sales", ["user_id"], name: "index_sales_on_user_id"

  create_table "schedules", force: :cascade do |t|
    t.date     "fechainicio"
    t.date     "fechafin"
    t.text     "dias"
    t.time     "horainicio"
    t.time     "horafin"
    t.integer  "user_id"
    t.integer  "service_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "schedules", ["service_id"], name: "index_schedules_on_service_id"
  add_index "schedules", ["user_id"], name: "index_schedules_on_user_id"

  create_table "services", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cedula"
    t.text     "direccion"
    t.date     "fechanacimineto"
    t.string   "telefono"
    t.boolean  "estado"
    t.date     "fechacontrato"
    t.date     "fechafincontrato"
    t.string   "cargo"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
