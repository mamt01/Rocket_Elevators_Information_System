class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.integer :customer_id
      t.string :building_address
      t.string :full_name_admin_person
      t.string :email_admin_person
      t.string :phone_number_admin_person
      t.string :full_name_tech_person
      t.string :email_tech_person
      t.string :phone_number_tech_person
    end
  end
end
