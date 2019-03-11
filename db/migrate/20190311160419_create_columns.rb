class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.integer :battery_id
      t.string :building_type
      t.integer :number_of_floors
      t.string :status
      t.text :information
      t.text :notes
    end
  end
end
