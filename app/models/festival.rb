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
#  venue_id    :integer
#

class Festival < ActiveRecord::Base
	has_many :users
	has_many :invites, :through => :users
	validates :name, :presence => true



# search for foursquare tips about a festival
# https://api.foursquare.com/v2/venues/VENUE_ID/tips

# how do we get the venue id?
# either copy and paste from URL ex. Lollapalooza: 4a7c4f0df964a52034ec1fe3
# or search foursquare by venue name

#  client.venue_tips("4b2afcaaf964a5205bb324e3"
	def tips
	 	base_url = "https://api.foursquare.com/v2/venues/#{venue_id}/tips?sort=popular&oauth_token=333XGVNQCUY0LI4GGL4B4MXWAM022G1EKD0JZWXOLKESCFK3&v=20140401"
		response = HTTParty.get(base_url)
		response["response"]["tips"]["items"].map do |item|
			item['text']
		end
	end

end

