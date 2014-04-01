class User < ActiveRecord::Base
	has_secure_password

	has_many :festivals
	has_many :invites

	validates(:name,  { :presence => true } )
  validates(:email,    { :uniqueness   => { case_sensitive: false }})
end