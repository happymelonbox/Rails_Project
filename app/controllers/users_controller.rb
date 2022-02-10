class UsersController < ApplicationController

    def new
      @user = User.new
    end
 
    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        render :new
      end
    end
 
    def show
      @user = User.find(params[:id])
    end
 
    private
    def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :contact_number, :address_unit_number, :address_street_number, :address_street_name, :address_suburb, :address_city, :address_state, :address_country, :address_postcode, :email, :password, :password_confirmation)
    end
  end