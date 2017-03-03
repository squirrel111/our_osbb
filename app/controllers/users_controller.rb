class UsersController < ApplicationController

  def index
  end

  def new
  end

  def show
    @user = User.find(current_user.id)
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to login_path
    else
      redirect_to signup_path
    end
  end

  def destroy
    @user = User.find(current_user.id)
    @user.destroy
    redirect_to login_path
  end
  
private
  def user_params
    params.require(:user).permit(:email, :adres, :room,:name, :password)
  end
  
end
