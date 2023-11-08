class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :user_signed_in?

  def user_signed_in?
    !current_user.nil?
  end

  def current_user
    return unless session[:email]

    @current_user ||= User.find_by(email: session[:email])
  end
end
