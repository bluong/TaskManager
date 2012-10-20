class SessionsController < ApplicationController
  skip_before_filter :set_current_user
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to tasks_path
  end
  def destroy
    session.delete(:user_id)
    flash[:notice] = 'Logged out successfully.'
    redirect_to tasks_path
  end
end
