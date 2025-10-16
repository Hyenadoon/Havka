# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_10_16_150332) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "product_calibers", force: :cascade do |t|
    t.integer "product_id", null: false
    t.string "name"
    t.integer "weight_g"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_calibers_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "default_unit"
    t.decimal "price_per_kg"
    t.integer "calories"
    t.decimal "protein"
    t.decimal "fat"
    t.decimal "carbs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "product_id", null: false
    t.decimal "quantity"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_recipe_ingredients_on_product_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "total_time"
    t.integer "servings"
    t.string "cuisine"
    t.boolean "spicy"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "instructions"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.boolean "done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_inventories", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.integer "product_caliber_id", null: false
    t.decimal "quantity"
    t.string "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_caliber_id"], name: "index_user_inventories_on_product_caliber_id"
    t.index ["product_id"], name: "index_user_inventories_on_product_id"
    t.index ["user_id"], name: "index_user_inventories_on_user_id"
  end

  create_table "user_sessions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.jsonb "state"
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "telegram_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "product_calibers", "products"
  add_foreign_key "recipe_ingredients", "products"
  add_foreign_key "recipe_ingredients", "recipes"
  add_foreign_key "user_inventories", "product_calibers"
  add_foreign_key "user_inventories", "products"
  add_foreign_key "user_inventories", "users"
  add_foreign_key "user_sessions", "users"
end
