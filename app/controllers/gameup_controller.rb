class GameupController < ApplicationController
  def index
    # initialize with api_key
    client = IGDB::Client.new ENV["IGDB_API_KEY"]
    @results = client.games 1942, {fields: "name"}
  end

  def search
    client = IGDB::Client.new ENV["IGDB_API_KEY"]

    @term = params[:term]
    @result = client.search_games @term, {fields: "name,release_dates,esrb.synopsis,rating"}
  end
end
