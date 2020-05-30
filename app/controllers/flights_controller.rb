class FlightsController < ApplicationController

  def index
    if params[:origin_airport].present?
      @flights = Flight.where(origin: params[:origin_airport],
                              destination: params[:destination_airport], 
                              departure_time: Date.strptime(params[:departure_date], "%m/%d/%Y").all_day)
    else
      @flights = Flight.all
    end
  end

end