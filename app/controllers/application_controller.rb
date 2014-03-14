class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ApplicationHelper

  #after_filter :store_location
	before_filter :configure_permitted_parameters, if: :devise_controller?




  #private

  #def store_location
 	#	if (!request.fullpath.match("/users") && !request.xhr?) # don't store ajax calls
  #		session[:previous_url] = request.fullpath
 	#	end
	#end

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  #def after_sign_in_path_for(resource)
  	#session[:previous_url] || root_path
	#end

	protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :date_of_birth, :state, :city, :zip, :address, :terms_condition) }
	end
  
end
