class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?
 protect_from_forgery

  private

  	def after_sign_in_path_for(resource)
  		case resource
  			when Admin
  				admins_items_path

			when EndUser
				end_user_path
		end
	end

	def after_sign_out_path_for(resource_or_scope)
  		if resource_or_scope == Admin
    			new_admin_session_path
    	else
				new_end_user_session_path
		end
	end

	protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end


end
