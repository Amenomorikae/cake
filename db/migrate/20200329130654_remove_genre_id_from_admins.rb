class RemoveGenreIdFromAdmins < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :genre_id, :integer
  end
end
