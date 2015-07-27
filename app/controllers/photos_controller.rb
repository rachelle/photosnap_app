class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  
  def index
    @photos = Photo.all
  end

  def new
    @photo = current_user.photos.new
  end

  def create
    @photo = current_user.photos.new(photo_params)
    if @photo.save
       redirect_to user_path(current_user)
    else 
       render 'new'
    end
  end
end

  def edit
   
  end

  def show
  end

  def destroy 
    @photo.destroy 
    respond_to do |format|
      format.html {redirect_to photos_url, noitce: 'Post was deleted'}
      format.json { head :no_content }
    end
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:title, :url)
  end

  def check_logged_in
  end

