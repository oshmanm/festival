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
	has_many :sent_invites, class_name: "Invite",
													foreign_key: "invitor_id"
	has_many :festivals, :through => :invites
	has_many :invites, class_name: "Invite",
											foreign_key: "invitee_id"

	validates(:name,  { :presence => true } )
  validates(:email,    { :uniqueness   => { case_sensitive: false }})
end

# class Employee < ActiveRecord::Base
#   has_many :subordinates, class_name: "Employee",
#                           foreign_key: "manager_id"
 
#   belongs_to :manager, class_name: "Employee"
# end