class GameupController < ApplicationController
  def index
    # initialize with api_key
    client = IGDB::Client.new ENV["IGDB_API_KEY"]
    @results = client.games 1942, {fields: "name"}
  end
end
