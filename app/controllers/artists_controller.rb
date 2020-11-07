class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end 

    def show
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new  
    end 

    def create
        Artist.create(params.require(:artist).permit(:name, :bio))
        redirect_to artists_path(@artist)
    end 
end
