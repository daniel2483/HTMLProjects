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

ActiveRecord::Schema.define(:version => 20130115215109) do

  create_table "dependencies", :force => true do |t|
    t.integer  "ID_SITES"
    t.integer  "ID_DEPENDENCIA"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "ip_types", :force => true do |t|
    t.string   "DESCRIPCION"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "ips", :force => true do |t|
    t.string   "IP"
    t.integer  "ID_SITES"
    t.string   "ID_IP_TYPES"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "isles", :force => true do |t|
    t.string   "NOMBRE_ISLA"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "medios", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "tipo"
  end

  create_table "searches", :force => true do |t|
    t.string   "CODiGO"
    t.string   "NOMBRE"
    t.string   "ISLA"
    t.integer  "MEDIO"
    t.integer  "TIPO"
    t.string   "IP"
    t.string   "new"
    t.string   "show"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sites", :force => true do |t|
    t.string   "COD_SITE"
    t.string   "NOM_SITE"
    t.string   "ACCESO"
    t.string   "COORDENADAS"
    t.integer  "ID_ISLA"
    t.text     "DESCRIPCION"
    t.string   "ZONA"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "ID_MEDIO"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
