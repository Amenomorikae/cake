class EndUsersController < ApplicationController
	def show
		@end_user = current_end_user
	end

	def edit
	end

    def update
    	@end_user = EndUser.find(params[:id])
	   	if @end_user.update(end_user_params)
	       flash[:notice] = “successfully”
	       redirect_to end_users_path
	     else
	      render :edit
	    end
    end

	def destroy
		@end_user = end_user.find_by(id: params[:id])
        if @end_user.destroy
            redirect_to root_path
        else
            render :edit
        end
	end

	private

	def end_user_params
     params.require(:end_user).permit(:name)
    end
end