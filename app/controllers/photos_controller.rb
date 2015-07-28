class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  
  def index
    @photos = Photo.all
  end

  def new
    @photo = current_user.photos.new
  end

  def create
    @photo = current_user.photos.create(photo_params)
    if @photo.save
       redirect_to user_path(current_user)
    else 
       render 'new'
    end
  end
end

  def edit
    @photo = Photo.find(params[:id])
   
  end

  def show
  end

  def destroy 
    @photo = Photo.find(params[:id])
    if @contact.update_attritbutes(photo_params)
      redirect_to users_path(current_user)
  end
end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:title, :image, :caption, :url)
  end

  def check_logged_in
  end

