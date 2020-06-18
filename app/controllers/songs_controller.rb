class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre))

    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

end
