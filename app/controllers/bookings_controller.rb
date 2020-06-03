class BookingsController < ApplicationController
  def new
    @flight = Flight.find_by(id: params[:flight].to_i)
    @booking = @flight.bookings.new(flight_id: @flight.id)
    params[:num_passengers].to_i.times {@booking.passengers.build}
  end

  def create
  end

  def show
  end

end
