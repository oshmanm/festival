class FestivalsController < ApplicationController

	def index
		@festivals = Festival.all
	end

	def new
		@festival = Festival.new
	end

	def create
		@festival = Festival.new

		if @festival.save
    		redirect_to("/festivals")
    	else
      	render("/festivals/new")
    	end
    end

  def show
    @festival = Festival.find(params[:id])
  end

  def tips
    base_url = "https://api.foursquare.com/v2/venues/venue_id/tips?sort=popular&oauth_token=333XGVNQCUY0LI4GGL4B4MXWAM022G1EKD0JZWXOLKESCFK3&v=20140401"
		response = HTTParty.get(base_url)
  end

	def destroy
	end

  end