class CreateInvites < ActiveRecord::Migration
  def change
    create_table :invites do |t|
    	t.integer	 :invitor_id
      t.integer   :invitee_id
      t.references  :festival, index: true
      t.timestamps
    end
  end
end