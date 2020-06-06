class DropIdFromLocations < ActiveRecord::Migration[6.0]
  def change
    remove_column :locations, :trip_id
  end
end
