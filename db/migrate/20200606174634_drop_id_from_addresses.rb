class DropIdFromAddresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :addresses, :location_id
  end
end
