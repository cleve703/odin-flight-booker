class Flight < ApplicationRecord
  belongs_to :origin, :class_name => 'Airport', :foreign_key => 'origin_id'
  belongs_to :destination, :class_name => 'Airport', :foreign_key => 'destination_id'

  def self.get_flight_dates
    dates_array = []
    flight_dates = Flight.find_by_sql("select distinct departure from flights where departure is not null order by departure desc")
    flight_dates.each do |flight| 
      d = flight.departure.to_date
      dates_array.push(d)
    end
    dates_array.uniq.sort
  end 

  # def flight_date_formatted
  #   departure.strftime("%m/%d/%Y")
  # end
end
