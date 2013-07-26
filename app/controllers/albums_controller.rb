class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :update, :destroy]

  # GET /albums
  # GET /albums.json
  def index
    @albums = Album.all
    # debugger
    respond_with(@albums)
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    respond_with(@album)
  end

  # GET /albums/new
  # def new
  #   @album = Album.new
  # end

  # GET /albums/1/edit
  # def edit
  # end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.create(album_params)
    respond_with(@album)
  end

  # PATCH/PUT /albums/1
  # PATCH/PUT /albums/1.json
  def update
    @album.update_attributes(album_params)
    respond_with(@album)
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album.destroy
    respond_with(@album)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:title, :duration, :rating, :info, :cover_url)
    end
end
