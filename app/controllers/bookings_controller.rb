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
        redirect_to garden_booking_path(@garden, @booking), notice: 'Your garden was booked succesfully'
      else
        render :new
      end
    end
    
    def show
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
      params.require(:booking).permit(:date).merge(user: current_user, garden: @garden, status: 'Booked')
    end
end
