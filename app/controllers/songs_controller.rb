class SongsController < ApplicationController
  
  def new
		@song = Song.new
	end
  
  def create
    @song = Artist.new(artist_params(:name, :bio))
	  @song.save
	  redirect_to artist_path(@song)
  end

  def update
    @song = Artist.find(params[:id])
	  @song.update(artist_params(:name, :bio))
	  redirect_to artist_path(@song)
  end

  def show
    @song = Artist.find(params[:id])
  end
  
  def edit
	  @song = Artist.find(params[:id])
	end
	
  private
	
	def song_params(*args)
  params.require(:song).permit(*args)
  end
  
end