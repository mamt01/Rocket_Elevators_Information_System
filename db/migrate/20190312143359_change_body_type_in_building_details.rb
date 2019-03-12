class ChangeBodyTypeInBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    change_column :building_details, :info_key, :string
    change_column :building_details, :value, :string
  end
end
