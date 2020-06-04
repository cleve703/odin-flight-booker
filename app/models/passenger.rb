class Passenger < ApplicationRecord
  belongs_to :booking

  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true
  validates_format_of :email, :with => /\A[^@,\s]+@[^@,\s]+\.[^@,\s]+\z/
end
