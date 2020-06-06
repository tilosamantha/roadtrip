class Location < ApplicationRecord
  has_one :address, dependent: :destroy
  belongs_to :trip

  validates :name, :days, :trip_id, presence: true
end
