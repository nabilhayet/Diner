class BookingsController < ApplicationController

    def index 
        @bookings = Booking.all 
    end 

    def show 
        @booking = Booking.find_by_id(params[:id])
    end 

    def new 
        @booking = Booking.new 
    end 

    def create 
        @booking = Booking.new(booking_params)
        if @booking.save
          redirect_to user_booking_path(@booking)
        else
          render :new
        end
    end 

    def edit
        @booking = Booking.find_by_id(params[:id])
        redirect_to user_bookings_path(@user), alert: "Booking not found." if @booking.nil?
    end 

    def update 
        @booking = Booking.find(params[:id])
        @booking.update(booking_params)
        redirect_to user_booking_path(@booking)
    end 

    def destroy 
        @booking = Booking.find_by_id(params[:id])
            if @booking.nil?
              redirect_to user_bookings_path(@user), alert: "Booking not found."
            else 
              @booking.delete
              redirect_to user_bookings_path(@user)
            end 
    end 

private

  def booking_params
    params.require(:booking).permit(:restaurant_id, :user_id, :date, :time, :table_num)
  end
end
