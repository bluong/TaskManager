class UsersController < ApplicationController
  skip_before_filter :set_current_user, :set_time_zone
  def new
    @user = User.new
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "New user #{@user.login} created."
      redirect_to root_path
    else
      render 'new'
    end
  end
end
