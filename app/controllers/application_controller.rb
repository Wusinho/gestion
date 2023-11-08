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

  def turbo_error_message(instance)
    render turbo_stream: turbo_stream.replace('error_message', partial: 'shared/error_message',
                                              locals: { message: instance.errors.full_messages.to_sentence })
  end

  def turbo_message(message)
    render turbo_stream: turbo_stream.replace('error_message', partial: 'shared/error_message',
                                              locals: { message: })
  end

end
