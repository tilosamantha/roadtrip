class Trip < ApplicationRecord
  validates :name, :start_date, :end_date, presence: true
  has_many :locations, dependent: :destroy
end
