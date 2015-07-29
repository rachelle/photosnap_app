class UsersController < ApplicationController
  
  def index
    @users = User.all 
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      session[:user_id] = @user.id
       redirect_to users_path
    else 
        render "new"
    end
  end

  def edit 
    @user = User.find(params[:id])
  end


  def show
    @user= User.find(params[:id])
    @user_photos = @user.photos(params[:id])
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
      redirect_to users_path(current_user)
  end
end

  private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
 


