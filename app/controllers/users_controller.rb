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
 
    def showclass UsersController < ApplicationController

      # before_action :current_user
  
      def index
          @users = User.all
              if @users
              render json: {
              users: @users
              }
          else
              render json: {
              status: 500,
              errors: ['no users found']
          }
          end
      end
  
      def create
          @user = User.new(user_params)
          if @user.save
              login! 
              render json: {
              status: :created,
              user: @user
          }
          else 
              render json: {
              status: 500,
              errors: @user.errors.full_messages
          }
          end
      end
  
      private
  
      def user_params
          params.require(:user).permit(:username, :first_name, :last_name, :contact_number, :address_unit_number, :address_street_number, :address_street_name, :address_suburb, :address_city, :address_state, :address_country, :email, :password, :password_confirmation)
      end
  end
      @user = User.find(params[:id])
    end
 
    private
    def user_params
      params.require(:user).permit(:user_name, :password, :first_name, :last_name, :email_address)
    end
  end