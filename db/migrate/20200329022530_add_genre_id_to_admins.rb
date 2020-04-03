class AddGenreIdToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :genre_id, :integer
  end
end
