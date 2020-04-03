class RemovePriceFromAdmins < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :price, :integer
  end
end
