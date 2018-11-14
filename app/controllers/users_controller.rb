class UsersController < ApplicationController
  respond_to :html, :json

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    user = User.find_by(id: params[:id])
    user.update(user_params)
    respond_with user
  end

  private

  def game_params
    params.require(:user).permit(:username)
  end
end
