# == Schema Information
#
# Table name: festivals
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  location    :string(255)
#  date        :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Festival < ActiveRecord::Base
	has_many :users
	has_many :invites, :through => :users
	validates :name, :presence => true
end
