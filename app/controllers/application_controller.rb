class ApplicationController < ActionController::Base

  before_filter :set_time_zone
  before_filter :set_current_user
  protected
  def set_time_zone
    Time.zone = @current_user.time_zone if @current_user
  end
  def set_current_user
    @current_user ||= User.find_by_id session[:user_id]
    redirect_to root_path and return unless @current_user
  end
end
