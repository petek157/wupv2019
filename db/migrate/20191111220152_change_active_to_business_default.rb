class ChangeActiveToBusinessDefault < ActiveRecord::Migration[5.2]
  def change
    change_column_default :businesses, :isActive, true
  end
end
