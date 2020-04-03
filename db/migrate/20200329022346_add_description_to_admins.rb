class AddDescriptionToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :description, :text
  end
end
