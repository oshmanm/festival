# == Schema Information
#
# Table name: invites
#
#  id          :integer          not null, primary key
#  invitor_id  :integer
#  invitee_id  :integer
#  festival_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Invite < ActiveRecord::Base

	belongs_to :user
	belongs_to :festival

	validates(:name,  { :presence => true } )
  validates(:email,    { :uniqueness   => { case_sensitive: false }})
end
