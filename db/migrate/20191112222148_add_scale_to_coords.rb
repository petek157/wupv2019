class AddScaleToCoords < ActiveRecord::Migration[5.2]
  def change
    change_column :businesses, :latitude, :decimal, :precision => 9, :scale => 6
    change_column :businesses, :longitude, :decimal, :precision => 9,  :scale => 6
  end
end
