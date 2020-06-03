class FlightsController < ApplicationController

  def index
    if params[:origin_airport].present?
      @flights = Flight.where(origin: params[:origin_airport],
                              destination: params[:destination_airport], 
                              departure_time: Date.strptime(params[:departure_date], "%m/%d/%Y").all_day).order(:departure_time).paginate(page: params[:page])
      @search_criteria = { origin_airport: params[:origin_airport], 
                           destination_airport: params[:destination_airport], 
                           departure_date: params[:departure_date], 
                           num_passengers: params[:num_passengers] }
      @selected_num_passengers = params[:num_passengers].to_i
      @select = true
    else
      @flights = Flight.order(:departure_time).paginate(page: params[:page])
      @search_criteria = { origin_airport: '1', 
        destination_airport: '1', 
        departure_date: '06/01/2020', 
        num_passengers: '1' }
      @select = false
    end
  end

end