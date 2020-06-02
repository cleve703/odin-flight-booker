class BookingsController < ApplicationController
  def new
    @flight = params[:flight]
    @num_passengers = params[:bookings][:num_passengers].to_i
  end
end
