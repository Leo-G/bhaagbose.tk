class UsersController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "papa", except: [:index, :show]
  def index
    if params[:tag]
    @user = User.order(created_at: :desc).tagged_with(params[:tag]).page(params[:page]).per(5)
  else 
    @user = User.order(created_at: :desc).page(params[:page]).per(5)
  end
  end

  def new
     @user = User.new
  end
  
  def create
   @user = User.new(user_params)
   if @user.save
     redirect_to @user
   else
     render 'new'
   end
  end
 
  def show
  @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
 
    if @user.update(params[:user].permit(:email,:text, :tag_list))
       redirect_to user_path
    else
       render 'edit'
    end
  end
  def edit
     @user = User.find(params[:id]) 
  end
  def admin
    @user = User.order(created_at: :desc).page(params[:page]).per(5)
  end
  def destroy
    @user =  User.find(params[:id])
    @user.delete
    
    redirect_to users_path
  end


private
  def user_params
  params.require(:user).permit(:email,:text, :image, :remote_image_url, :tag_list)
  end
end
