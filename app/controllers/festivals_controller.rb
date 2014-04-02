class FestivalsController < ApplicationController

	def index
		@festivals = Festival.all
	end

	def new
		@festival = Festival.new
	end

	def create
		@festival = Festival.new
  end

  def show
    @festival = Festival.find(params[:id])
  end

	def destroy
	end

  end

  #  base_url = "https://api.foursquare.com/v2/venues/4b2afcaaf964a5205bb324e3/tips?sort=popular&oauth_token=333XGVNQCUY0LI4GGL4B4MXWAM022G1EKD0JZWXOLKESCFK3&v=20140401"
  # 4b2afcaaf964a5205bb324e3