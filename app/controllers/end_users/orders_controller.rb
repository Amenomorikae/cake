class EndUsers::OrdersController < ApplicationController
	def new
		@order = Order.new
		@end_user = EndUser.find(current_end_user.id)
	end


	def verlification
		@order = session[:order]
		@end_user = current_end_user
		@postage = 1000
	    @total_price = 0
	    @prices = 0
	    current_end_user.cart_items.each do |cart_item|
	      price = 0
	      price = cart_item.item.price * cart_item.amount
	      @prices = @prices + cart_item.item.price
	      @total_price = @total_price + price
	    end
	    @prices = @prices * 1.10
	    @total_price = @total_price * 1.10
	    @total_price = (@total_price + @postage).round
	end

	def create
		order = Order.new(order_params)
		order.end_user_id = current_end_user.id
	    order.save
	    redirect_to verification_end_users_orders_path
	end

	

	private
	def order_params
      params.require(:order).permit(:end_user_id, :order_status, :total_price, :payment, :postal_code, :postage, :address, :street_address)
    end
end
