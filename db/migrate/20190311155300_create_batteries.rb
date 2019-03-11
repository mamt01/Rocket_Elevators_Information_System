class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.integer :building_id
      t.string :building_type
      t.string :status
      t.integer :employee_id
      t.date :date_of_instal
      t.date :date_of_inspect
      t.integer :inspect_certificate
      t.text :Information
      t.text :notes
    end
  end
end
