class RemoveDeletedFromUsers < ActiveRecord::Migration[5.2]
  def change
    #remove_index :users, :deleted_at
    #remove_column :users, :deleted_at, :datetime
  end
end
