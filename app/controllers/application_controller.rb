class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit({roles: [] }, :email, :name, :password, :password_confirmation)
    end
  end

end
