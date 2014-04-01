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

	def destroy
	end

end