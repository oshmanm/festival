# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  age             :integer
#  location        :string(255)
#  festival_id     :integer
#

class User < ActiveRecord::Base
	has_secure_password

	has_many :festivals
	has_many :invites

	validates(:name,  { :presence => true } )
  validates(:email,    { :uniqueness   => { case_sensitive: false }})
end
