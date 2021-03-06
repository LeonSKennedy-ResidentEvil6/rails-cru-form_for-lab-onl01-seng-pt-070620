class SongsController < ApplicationController

    def index
        @songs = Song.all
    end 

    def show
        @song = Song.find(params[:id])
        @genre = Genre.find(params[:id])
        @artist = Artist.find(params[:id])
    end

    def new
        @song = Song.new  
    end 

    def create
        Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to songs_path(@song)
    end 

    def edit 
        @song = Song.find(params[:id])
    end 

    def update
        @song = Song.find(params[:id])
        @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to songs_path(@song)
    end 
end
