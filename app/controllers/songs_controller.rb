class SongsController < ApplicationController
  # before_action :set_song, only:

  def new
    @song = Song.new
  end

  def create
  end

end
