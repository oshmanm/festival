class AddVenueIDtoFestival < ActiveRecord::Migration
  def change
  	add_column :festivals, :venue_id, :integer
  end
end
