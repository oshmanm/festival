class Festival < ActiveRecord::Base
	has_many :users
	has_many :invites
	validates :name
end