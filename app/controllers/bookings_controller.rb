class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
    end
    
    def new
        @garden = Garden.find(params[:garden_id])
        @booking = Booking.new
        @user = @garden.user
    end
    
    def create
      @garden = Garden.find(params[:garden_id])
      @booking = Booking.new(booking_params)
      if @booking.save
        @booking.status = 'Booked'
        redirect_to booking_path(@booking), notice: 'Your garden was booked succesfully'
      else
        render :new
      end
    end
    
    def edit
    end

    def update
    end

    def destroy 
      @booking.destroy

      redirect_to garden_bookings_path
    end

    private

    def booking_params
      params.require(:booking).permit(:content)
    end
end
