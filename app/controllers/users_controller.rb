class UsersController < ApplicationController

    def home 
    end 

    def new 
        @user = User.new 
    end 

    def create
       @user = User.new(user_params)
        if @user.valid?
            @user.save
            redirect_to user_profile_path(@user) 
        else
            render "new"
        end 
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :email, :address :contact)
    end 
end
