class GamesController < ApplicationController
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
    game = Game.find_by(id: params[:id])
    game.update(game_params)
    redirect_to game_path(game)
  end

  def new
    @game = Game.new
  end

  def create
    game = current_user.games.create(game_params)
    redirect_to games_path
  end

  def destroy
    game = Game.find_by(id: params[:id])
    game.destroy
    redirect_to users_show_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :cover, :release_date, :user_id)
  end
end
