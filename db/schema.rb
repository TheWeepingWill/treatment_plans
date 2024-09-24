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

ActiveRecord::Schema[7.2].define(version: 2024_09_24_202814) do
  create_table "products", force: :cascade do |t|
    t.string "name"
    t.float "cost"
    t.integer "square_feet"
    t.text "group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "cost_per_square_foot"
  end

  create_table "treatment_plan_treatments", force: :cascade do |t|
    t.integer "treatment_plan_id", null: false
    t.integer "treatment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["treatment_id"], name: "index_treatment_plan_treatments_on_treatment_id"
    t.index ["treatment_plan_id"], name: "index_treatment_plan_treatments_on_treatment_plan_id"
  end

  create_table "treatment_plans", force: :cascade do |t|
    t.float "annual_cost"
    t.float "monthly_cost"
    t.float "cost_per_visit"
    t.integer "treatment_count"
    t.integer "visit_count"
    t.float "cost_per_treatment"
    t.integer "square_feet"
    t.string "type_of_grass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "treatment_products", force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "treatment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_treatment_products_on_product_id"
    t.index ["treatment_id"], name: "index_treatment_products_on_treatment_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.float "price_per_square_foot"
  end

  add_foreign_key "treatment_plan_treatments", "treatment_plans"
  add_foreign_key "treatment_plan_treatments", "treatments"
  add_foreign_key "treatment_products", "products"
  add_foreign_key "treatment_products", "treatments"
end
