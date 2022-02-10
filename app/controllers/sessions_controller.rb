class SessionsController < ApplicationController

  def new
  end

  def omniauth
    puts "request.env[omniauth.auth]: #{request.env['omniauth.auth']}"
    @user = User.from_omniauth(request.env['omniauth.auth'])
    if @user
      session[:user_id] = @user.id
      redirect_to receipts_path, notice: "Logged In!"
    else
      redirect_to '/login'
    end
  end

  def create
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      login!
      redirect_to receipts_path, notice: "Logged In!"
    else
      redirect_to 'http://localhost:3000/', notice: 'no such user, verify credentials and try again or signup'
    end
  end

  def is_logged_in?
    if logged_in? && current_user
      redirect_to receipts_path, notice: "Logged In!"
    else
      redirect_to 'http://localhost:3000/', notice: "No such user!"
    end
  end

  def destroy
    logout!
    redirect_to 'http://localhost:3000/', notice: "Logged Out!"
  end

  private

  def session_params
    params.require(:user).permit(:username, :email, :password)
  end

end