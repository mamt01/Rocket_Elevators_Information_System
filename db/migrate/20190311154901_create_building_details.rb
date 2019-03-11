class CreateBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :building_details do |t|
      t.integer :building_id
      t.integer :info_key
      t.integer :value
    end
  end
end
