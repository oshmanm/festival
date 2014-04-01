class RemovesUsersAttending < ActiveRecord::Migration
  def change
  	remove_column :festivals, :users_attending
  end
end
