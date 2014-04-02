class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :festivals, :venue_id, :string
  end
end
