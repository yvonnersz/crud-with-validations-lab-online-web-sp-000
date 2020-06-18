class SongsController < ApplicationController
  # before_action :set_song, only:

  def new
    @song = Song.new
  end

  def create
    @song = Song.new

    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end

end
