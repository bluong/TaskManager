class SessionsController < ApplicationController
  
  skip_before_filter :set_current_user, :set_time_zone
  
  def index
    if session[:user_id]
      redirect_to tasks_path and return
    end
  end

  def create
    @current_user = User.find_by_login_and_password params[:user][:login], params[:user][:password]
    if @current_user == nil
      flash[:notice] = "Login/Password not found."
      redirect_to index_path and return
    end
    session[:user_id] = @current_user.id
    redirect_to tasks_path
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'Logged out successfully.'
    redirect_to index_path
  end
end
