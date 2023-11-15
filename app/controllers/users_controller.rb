class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
  end

  def create
    @users = User.all
    user = User.create(user_params)

    render :index
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
