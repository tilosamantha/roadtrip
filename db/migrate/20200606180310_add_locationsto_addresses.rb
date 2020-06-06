class AddLocationstoAddresses < ActiveRecord::Migration[6.0]
  def change
    add_reference :addresses, :location, foreign_key: true
  end
end
