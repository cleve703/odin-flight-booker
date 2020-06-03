class BookingsController < ApplicationController
  def new
    @flight = Flight.find_by(id: params[:flight].to_i)
    @flight_id = @flight.id
    @booking = @flight.bookings.new(flight_id: @flight.id)
    params[:num_passengers].to_i.times {@booking.passengers.build}
  end

  def create
    @flight = Flight.find_by(id: params[:flight_id].to_i)
    @booking = @flight.bookings.create(flight_id: @flight.id)
    @booking.create_associated_passengers(params[:booking][:passengers_attributes])
  end

  def show
  end

end
