class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @name = @user.nickname
    @products = @user.products
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if current_user.update(user_params)
      redirect_to root_path
      #redirect_to action: :show
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :password_confirmation, :profile)
  end
end
