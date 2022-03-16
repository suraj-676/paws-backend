

ActiveRecord::Schema.define(version: 2022_03_14_013432) do

  create_table "animals", force: :cascade do |t|
    t.string "breed"
    t.string "name"
    t.string "description"
    t.integer "age"
    t.text "image_url"
    t.text "sex"
    t.text "species"
    t.integer "adopter_id"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "is_admin"
    t.string "first_name"
    t.string "last_name"
    t.text "address"
    t.text "email"
    t.text "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
