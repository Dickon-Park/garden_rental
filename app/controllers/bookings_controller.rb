class BookingsController < ApplicationController
    def show
    end
    
    def new
        @garden = Garden.find(params[:garden_id])
        @booking = Booking.new
        @user = @garden.user
    end
    
    def create
    end
    
    def edit
    end

    def update
    end
end
