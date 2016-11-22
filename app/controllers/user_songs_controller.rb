class UserSongsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource

	def create
		@song = Song.find(params[:song_id])
		current_user.songs << @song
		
		redirect_to songs_path
	end

	def destroy
		@user_song_id = UserSong.find(params[:id])
		@user_song_id.destroy!
		
		redirect_to users_path(@user_id), :notice => "Your song was deleted"
	end
end