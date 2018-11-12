class GameupController < ApplicationController
  def index
    # initialize with api_key
    client = IGDB::Client.new ENV["IGDB_API_KEY"]
    @results = client.games 1942, {fields: "name"}
  end

  def search
    client = IGDB::Client.new ENV["IGDB_API_KEY"]

    @term = params[:term]
    @result = client.search_games @term, {fields: "name,release_dates,esrb.synopsis,rating,cover"}
    @game = Game.new
  end

  def create
    game = current_user.games.create(game_params)
  end

  private

  def game_params
    params.permit(:name, :cover, :release_date, :user_id)
  end
end
