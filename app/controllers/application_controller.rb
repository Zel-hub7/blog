# class ApplicationController < ActionController::Base
#     protect_from_forgery with: :exception

#     helper_method :current_user

#     def current_user
#         @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
#     end
# end

class ApplicationController < ActionController::Base
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :photo])
  end
  
end
  
