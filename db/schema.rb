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

ActiveRecord::Schema.define(version: 9) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
  end

  create_table "ice_cream_cones", force: :cascade do |t|
    t.string "flavor"
    t.string "cone"
    t.integer "scoops"
    t.integer "customer_id"
    t.integer "shop_id"
  end

  create_table "ice_cream_shops", force: :cascade do |t|
    t.string "name"
  end

end
