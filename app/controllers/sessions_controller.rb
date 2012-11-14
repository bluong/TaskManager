class SessionsController < ApplicationController
  
  skip_before_filter :set_current_user, :set_time_zone
  
  def index
    if session[:user_id]
      redirect_to tasks_path and return
    end
  end

  def create
    @current_user = User.find_by_login(params[:user][:login])
    if @current_user and @current_user.authenticate(params[:user][:password]) 
      session[:user_id] = @current_user.id
      redirect_to tasks_path
    else
      flash[:notice] = "Login/Password not found."  
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'Logged out successfully.'
    redirect_to root_path
  end
end
