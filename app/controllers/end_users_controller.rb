class EndUsersController < ApplicationController
	def show
	end

	private

	def end_user_params
     params.require(:end_user).permit(:name)
    end
end
