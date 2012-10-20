class ApplicationController < ActionController::Base

  before_filter :set_time_zone
  def set_time_zone
    Time.zone = @current_user.time_zone if @current_user
  end
end
