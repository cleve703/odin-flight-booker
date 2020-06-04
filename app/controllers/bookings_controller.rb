class BookingsController < ApplicationController
  def new
    @flight = Flight.find_by(id: params[:booking][:flight_id].to_i)
    @flight_id = @flight.id
    @booking = @flight.bookings.new(flight_id: @flight_id)
    params[:booking][:num_passengers].to_i.times {@booking.passengers.build}
  end

  def create
    @flight = Flight.find_by(id: params[:booking][:flight_id].to_i)
    @booking = @flight.bookings.create!(flight_id: @flight.id)
    @booking.create_associated_passengers(params[:booking][:passengers_attributes])
    render :show
  end

  def show(booking)
    @booking = booking
  end

end
