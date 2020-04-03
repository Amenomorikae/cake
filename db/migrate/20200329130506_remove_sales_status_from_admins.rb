class RemoveSalesStatusFromAdmins < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :sales_status, :boolean
  end
end
