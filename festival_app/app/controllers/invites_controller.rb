class InvitesController < ApplicationController

	def index
		@invites = Invite.all
	end

	def new
		@invite = Invite.new
	end

	def create
		@invite = Invite.new
	end

	def show
    @invite = Invite.find_by(id: params[:id])

	def destroy
	end
end