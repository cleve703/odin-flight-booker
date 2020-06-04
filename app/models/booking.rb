class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers
  accepts_nested_attributes_for :passengers
  validates :flight_id, presence: true

  def create_associated_passengers(passengers_attributes)
    passengers_attributes.each do |key, value|
      passengers.create!(name: value[:name], email: value[:email])
    end
  end
end
