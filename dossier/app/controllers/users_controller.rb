class UsersController < ApplicationController

  def index
     @users = User.all
   end

   def show
     @user = get_user
   end

   def new
     @user = User.new
   end

   def create
     @user = User.new(user_params)
     redirect_to users_path
   end

   def edit
     @user= get_user
   end

   def update
   @user= get_user
   end

   def destroy
   end

private

  def get_user
    User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email)
  end

end
