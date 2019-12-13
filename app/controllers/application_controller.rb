class ApplicationController < ActionController::Base
layout "application"
before_action :configure_permitted_parameters, if: :devise_controller?

protected
# Devise generated sanitizers, run when a devise controller is run
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
  devise_parameter_sanitizer.permit(:account_update, keys: [:username])
end

protect_from_forgery with: :exception
end
