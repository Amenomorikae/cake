class EndUsersController < ApplicationController
	def show
	end

	def edit
	end

    def update
    	@end_user = EndUser.find(current_end_user.id)
	   	if @end_user.update(end_user_params)
	       redirect_to end_users_path
	     else
	      render :edit
	    end
    end


    def destroy
    	@end_user = EndUser.find(current_end_user.id)
    	 @end_user.destroy
    	  redirect_to root_path
    end

	private

	def end_user_params
     params.require(:end_user).permit( :email, :name)
    end
end