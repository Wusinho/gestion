class SessionsController < ApplicationController
  def create
    user = find_user_by_email
    if user.present?
      session[:email] = user.email
      redirect_to root_path
    else
      turbo_message('User not Found')
    end
  end

  def destroy
    session[:email] = nil
    redirect_to root_path
  end

  def find_user_by_email
    User.find_by(email: params[:email])
  end

end
