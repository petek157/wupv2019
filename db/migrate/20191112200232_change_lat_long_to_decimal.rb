class ChangeLatLongToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :businesses, :latitude, :decimal
    change_column :businesses, :longitude, :decimal
  end
end
