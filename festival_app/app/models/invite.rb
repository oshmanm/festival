class Invite < ActiveRecord::Base

	belongs_to :user
	belongs_to :festival

	validates(:name,  { :presence => true } )
  validates(:email,    { :uniqueness   => { case_sensitive: false }})
end