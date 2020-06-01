class FlightsController < ApplicationController

  def index
    if params[:origin_airport].present?
      @flights = Flight.where(origin: params[:origin_airport],
                              destination: params[:destination_airport], 
                              departure_time: Date.strptime(params[:departure_date], "%m/%d/%Y").all_day)
      @search_criteria = { origin_airport: params[:origin_airport] || '1', 
                           destination_airport: params[:destination_airport] || '1', 
                           departure_date: params[:departure_date] || '06/01/2020', 
                           num_passengers: params[:num_passengers] || '1' }
    else
      @flights = Flight.all
      @search_criteria = { origin_airport: '1', 
        destination_airport: '1', 
        departure_date: '06/01/2020', 
        num_passengers: '1' }
    end
  end

end