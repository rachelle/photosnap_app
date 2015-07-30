class CommentsController < ApplicationController
  before_action :set_photo, only: [:new, :create]

  def index
   @comments = photo.comments
  end

  def new
    #creates a comment for the given photo
    @comment = @photo.comments.new
    @comment.user = current_user.id
  end

  def create
    @comment = @photo.comments.new(comment_params)
    #for the new comment sets the user to be current_user
    @comment.user = current_user
    if @comment.save
      flash[:success] = "Comment posted!"
      redirect_to photo_path(@photo.id)
    else 
      render 'new'
    end
  end

  def show
    @photo = Photo.find(params[:photo_id])
    @comment = photo.comments.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    @comment = Comment.find(params[:id])
    @comment.destroy 
    redirect_to photo_path(@photo.id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_photo
    @photo = Photo.find(params[:photo_id])
  end
end
