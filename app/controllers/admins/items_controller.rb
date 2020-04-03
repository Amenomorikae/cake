class Admins::ItemsController < ApplicationController
	def index
		@items = Item.all
	end

	def new
		@item = Item.new
	end

    def create
		item = Item.new(item_params)
        if item.save!
		  redirect_to admins_items_path(@item)
		else
			@item = item
			render :new
		end
	end

	private
	def item_params
		params.require(:item).permit(:description, :genre_id, :price, :sales_status)
	end
end
