class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

    	t.integer :end_user_id
    	t.integer :postage
    	t.integer :payment
    	t.string :payment_method
    	t.string :address
    	t.string :name
    	t.integer :order_status
    	t.string :postal_code
    	t.integer :total_price
    	t.string :street_address
    	t.integer :adress_btn

      t.timestamps
    end
  end
end
