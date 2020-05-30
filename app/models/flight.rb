class Flight < ApplicationRecord
  belongs_to :origin, :class_name => 'Airport', :foreign_key => 'origin_id'
  belongs_to :destination, :class_name => 'Airport', :foreign_key => 'destination_id'

  def self.departure_dates_formatted
    Flight.all.map { |f| f.departure_time.to_date.strftime("%m/%d/%Y") }.uniq.sort
  end

end
