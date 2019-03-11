class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.integer :column_id
      t.integer :serial_number
      t.string :model_type
      t.string :building_type
      t.string :status
      t.date :date_of_instal
      t.date :date_of_inspect
      t.string :inspect_certificate
      t.text :information
      t.text :notes
    end
  end
end
