class Gameup
  require "igdb_client"

  # initialize with api_key
  IGDB::API.api_key = ENV["IGDB_API_KEY"]
end
