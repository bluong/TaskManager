class UsersController < ApplicationController
  skip_before_filter :set_current_user
  def new
    @user = User.new
  end
  
    # POST /tasks
  # POST /tasks.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        @users = User.all
        flash[:notice] = "New user #{@user.login} created."
        redirect_to index_path and return
      else
        flash[:notice] = "Login/Password Field cannot be blank."
        redirect_to new_user_path and return
      end
    end
  end
end
