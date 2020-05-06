class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_search
     def after_sign_in_path_for(resource)
         case resource
	         when Admin
	             admins_items_path
	         when EndUser
	             end_users_path
         end
     end

    def after_sign_out_path_for(resource_or_scope)
        if resource_or_scope == Admin
            new_admin_session_path
        else
            new_end_user_session_path
        end
    end

    #def set_search
        #@search = Item.ransack(params[:q])
        #@search_articles = @search.result
    #end


    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name, :kana_surname,:surname, :kana_name, :postal_code, :street_address, :phone_number])
        devise_parameter_sanitizer.permit(:sign_in, keys:[:email])
    end

end
