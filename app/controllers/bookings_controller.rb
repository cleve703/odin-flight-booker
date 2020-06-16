class BookingsController < ApplicationController
  def new
    @flight = Flight.find_by(id: booking_params[:flight_id].to_i)
    @flight_id = booking_params[:flight_id]
    @booking = @flight.bookings.new(flight_id: @flight_id)
    booking_params[:num_passengers].to_i.times {@booking.passengers.build}
  end

  def create
    @flight = Flight.find_by(id: booking_params[:flight_id].to_i)
    @booking = @flight.bookings.create!(flight_id: @flight.id)
    @booking.create_associated_passengers(booking_params[:passengers_attributes])
    PassengerMailer.thank_you_email(@booking.passengers).deliver
    render :show
  end

  def show
  end

  private

    def booking_params
      params.require(:booking).permit(:flight_id, :num_passengers, :passengers_attributes, passengers_attributes: [:name, :email])
    end

end
