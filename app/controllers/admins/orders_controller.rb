class Admins::OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    private
    def order_params
        params.require(:order).permit(:order_status)
    end
end
