class RestaurantsController < ApplicationController

    def index 
        @restaurants = Restaurant.all 
    end 

    def show 
        @restaurant = Restaurant.find_by_id(params[:id])
    end 

    def new 
        @restaurant = Restaurant.new 
    end 

    def create
        @restaurant = Restaurant.new(restaurant_params)
         if @restaurant.valid?
             @restaurant.save
             redirect_to bookings_page 
         else
             render "new"
         end 
     end 

    private

  def restaurant_params
    params.require(:restaurant).permit(:name, :street, :city, :zipcode)
  end
end
