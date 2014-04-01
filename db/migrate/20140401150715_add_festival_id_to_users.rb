class AddFestivalIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :festival_id, :integer
  end
end
