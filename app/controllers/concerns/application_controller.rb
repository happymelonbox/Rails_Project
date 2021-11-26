class ApplicationController < ActionController::Base
    def home
    end
  
    def current_user
      @user = User.find(session[:user_id])
    end
  
    def logged_in?
      !!session[:user_id]
    end
  
    def authentication_redirect
      redirect_to root_path unless logged_in?
    end
end
