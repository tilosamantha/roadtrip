class Trip < ApplicationRecord
  has_many :locations, dependent: :destroy

  validates :name, :start_date, :end_date, presence: true
end
