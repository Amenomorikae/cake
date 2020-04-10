class EndUsers::CartItemsController < ApplicationController

	def index
		@cart_items = current_end_user.end_users_cart_items
	end

	def create
		cart_item = CartItem.new(cart_item_params)
		cart_item.end_user_id = current_end_user.id
		cart_item.save
		redirect_to end_users_cart_items_path
	end


	private
	def cart_item_params
      params.require(:end_users_cart_item).permit(:end_user_id, :item_id)
    end
end
