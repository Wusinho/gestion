class RegistrationsController < ApplicationController
  def index
    @user = User.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:email] = @user.email
      redirect_to root_path
    else
      turbo_error_message(@user)
    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email)
  end
end
