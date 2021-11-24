class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :surname, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :surname, :avatar, :email, :password, :current_password])
  end
end
