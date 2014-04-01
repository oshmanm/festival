class Festival < ActiveRecord::Base
	has_many :users
	has_many :invites, :through => users
	validates :name
end