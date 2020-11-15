# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_14_191328) do

  create_table "item_recipes", force: :cascade do |t|
    t.integer "quantidade"
    t.integer "produto_id", null: false
    t.integer "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["produto_id"], name: "index_item_recipes_on_produto_id"
    t.index ["recipe_id"], name: "index_item_recipes_on_recipe_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.integer "quantidade"
    t.date "data_validade"
    t.string "tipos_de_quantidade"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_produtos_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

# Could not dump table "users" because of following StandardError
#   Unknown type 'has_many' for column 'produto'

  add_foreign_key "item_recipes", "produtos"
  add_foreign_key "item_recipes", "recipes"
  add_foreign_key "produtos", "users"
  add_foreign_key "recipes", "users"
end
