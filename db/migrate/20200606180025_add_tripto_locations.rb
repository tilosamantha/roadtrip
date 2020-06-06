class AddTriptoLocations < ActiveRecord::Migration[6.0]
  def change
    add_reference :locations, :trip, foreign_key: true
  end
end
