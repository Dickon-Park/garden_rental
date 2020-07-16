class BookingsController < ApplicationController
    def new
      # we need @restaurant in our `simple_form_for`
      @garden = garden.find(params[:garden_id])
      @booking = Booking.new
    end
end
