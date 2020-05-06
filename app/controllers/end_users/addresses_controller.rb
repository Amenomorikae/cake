class EndUsers::AddressesController < ApplicationController
    def index
        @address = Address.new
        @addresses = Address.where(end_user_id: current_end_user.id)
    end

    def create
        address = Address.new(address_params)
        address.end_user_id = current_end_user.id
        if address.save
            redirect_to end_users_addresses_path
        else
            ＠address = address
            @addresses = Address.all
            render :index
        end
    end

    def address_params
        params.require(:address).permit(:postal_code, :street_address, :address)
    end
end
