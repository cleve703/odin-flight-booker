class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @search = nil
  end

end
