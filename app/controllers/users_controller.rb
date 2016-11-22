class UsersController < ApplicationController
	load_and_authorize_resource

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		@playlists = @user.user_songs
	end
end
