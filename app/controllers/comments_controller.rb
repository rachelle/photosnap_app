class CommentsController < ApplicationController
  before_action :set_post

  def index
   photo = Photo.find(params[:photo_id])
   @comments = photo.comments
  end

  def create
    @photo = Photo.find(params[:photo_id])
    @comment = Comment.new(params[:comment])
    @comment.photo = @photo
    @comment.user = current_user
    if @comment.save
      flash[:success] = "Comment posted!"
      redirect_to current_user
    else 
      render 'new'
    end
  end

  def new
    @post.find(params[:id]
    @comment = @post.comments.new
    @comment.user_id = current_user.id
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
    photo = Photo.find(params[:photo_id])
    @comment = photo.comments.find(params[:id])
    @comment.destroy 
    redirect_to root_path 
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
