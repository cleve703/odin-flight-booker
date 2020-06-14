class FlightsController < ApplicationController

  def index
    if params[:flight].present?
      @flights = Flight.where(origin: search_params[:origin_airport],
                              destination: search_params[:destination_airport], 
                              departure_time: Date.strptime(search_params[:departure_date], "%m/%d/%Y").all_day).order(:departure_time).paginate(page: params[:page])
      @search_criteria = { origin_airport: search_params[:origin_airport], 
                           destination_airport: search_params[:destination_airport], 
                           departure_date: search_params[:departure_date], 
                           num_passengers: search_params[:num_passengers] }
      @selected_num_passengers = search_params[:num_passengers].to_i
      @select = true
    else
      @flights = Flight.order(:departure_time).paginate(page: params[:page])
      @search_criteria = { origin_airport: '1', 
        destination_airport: '1', 
        departure_date: Date.today.strftime("%m/%d/%Y"), 
        num_passengers: '1' }
      @select = false
    end
  end

  private

    def search_params
      params.require(:flight).permit(:origin_airport, :destination_airport, :num_passengers, :departure_date)
    end

end