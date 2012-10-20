class ApplicationController < ActionController::Base

  before_filter :set_time_zone, :set_current_user
  protected
  def set_time_zone
    Time.zone = @current_user.time_zone if @current_user
  end
  def set_current_user
    @current_user ||= User.find_by_id session[:user_id]
    redirect_to login_path('facebook') and return if @current_user
  end
end
