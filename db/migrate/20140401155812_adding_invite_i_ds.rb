class AddingInviteIDs < ActiveRecord::Migration
  def change
  	change_column :invites, :invitor, :integer
  	change_column :invites, :invitee, :integer
  	rename_column :invites, :invitor, :invitor_id
  	rename_column :invites, :invitee, :invitee_id
  end
end
