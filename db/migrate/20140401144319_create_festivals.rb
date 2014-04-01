class CreateFestivals < ActiveRecord::Migration
  def change
    create_table :festivals do |t|
    	t.string  :name
      t.string	:location
      t.string  :date
      t.string 	:description
      t.string 	:users_attending
      t.timestamps
    end
  end
end
