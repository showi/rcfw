# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100507103711) do

  create_table "categories", :force => true do |t|
    t.integer  "parent_id"
    t.string   "name"
    t.string   "cattype_id"
    t.string   "description"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cattypes", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "available"
    t.integer  "price"
    t.boolean  "onlywithmenu"
    t.integer  "category_id"
  end

  create_table "dishes_menus", :force => true do |t|
    t.integer  "dish_id"
    t.integer  "menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "available"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scms", :force => true do |t|
    t.integer  "parent"
    t.integer  "next"
    t.integer  "prev"
    t.string   "type"
    t.integer  "mime_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
