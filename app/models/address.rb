class Address < ApplicationRecord
  belongs_to :location

  validates :street, :city, :state, :zip, :location_id, presence: true
end
