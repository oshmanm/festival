class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
    	t.string	 :invitor
      t.string   :invitee
      t.references  :festival, index: true
    end
  end
end