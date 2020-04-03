class RemoveDescriptionFromAdmins < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :description, :text
  end
end
