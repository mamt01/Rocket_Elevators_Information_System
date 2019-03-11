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

ActiveRecord::Schema.define(version: 2019_03_11_160629) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "address_type"
    t.string "status"
    t.string "entity"
    t.string "number_street"
    t.string "apt_number"
    t.string "city"
    t.string "postal_code"
    t.string "country"
    t.text "notes"
  end

  create_table "batteries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "building_id"
    t.string "building_type"
    t.string "status"
    t.integer "employee_id"
    t.date "date_of_instal"
    t.date "date_of_inspect"
    t.integer "inspect_certificate"
    t.text "Information"
    t.text "notes"
  end

  create_table "building_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "building_id"
    t.integer "info_key"
    t.integer "value"
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "customer_id"
    t.string "building_address"
    t.string "full_name_admin_person"
    t.string "email_admin_person"
    t.string "phone_number_admin_person"
    t.string "full_name_tech_person"
    t.string "email_tech_person"
    t.string "phone_number_tech_person"
  end

  create_table "columns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "battery_id"
    t.string "building_type"
    t.integer "number_of_floors"
    t.string "status"
    t.text "information"
    t.text "notes"
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.date "date_of_creation"
    t.string "company_name"
    t.string "company_hq_adress"
    t.string "full_name_contact_person"
    t.string "phone_number_contact_person"
    t.string "email_contact_person"
    t.text "company_description"
    t.string "full_name_service_person"
    t.string "phone_number_service_person"
    t.string "email_service_person"
  end

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "column_id"
    t.integer "serial_number"
    t.string "model_type"
    t.string "building_type"
    t.string "status"
    t.date "date_of_instal"
    t.date "date_of_inspect"
    t.string "inspect_certificate"
    t.text "information"
    t.text "notes"
  end

  create_table "leads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "full_name"
    t.string "company_name"
    t.string "email"
    t.string "phone_number"
    t.string "project_name"
    t.text "project_description"
    t.string "department_in_charge"
    t.text "message"
    t.binary "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "department"
    t.string "full_name"
    t.string "company_name"
    t.string "email"
    t.string "phone_number"
    t.integer "number_of_apartments"
    t.integer "number_of_floors"
    t.integer "number_of_basements"
    t.integer "number_of_parking"
    t.integer "number_of_stores"
    t.integer "max_occupancy_per_floor"
    t.integer "hours_of_activity"
    t.string "service_level"
    t.integer "number_of_elevators"
    t.float "total_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "soumissions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.integer "nb_floor"
    t.boolean "published"
    t.date "date_soumission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
