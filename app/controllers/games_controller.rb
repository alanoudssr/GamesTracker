class GamesController < ApplicationController
  respond_to :html, :json

  def index
    @games = Game.all
  end

  def show
    @game = Game.find_by(id: params[:id])
  end

  def edit
    @game = Game.find_by(id: params[:id])
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(game_params)
    respond_with @game
  end

  def new
    @game = Game.new
  end

  def create
    game = current_user.games.create(game_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    game = Game.find_by(id: params[:id])
    game.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def game_params
    params.require(:game).permit(:name, :cover, :release_date, :user_id, :category)
  end
end
