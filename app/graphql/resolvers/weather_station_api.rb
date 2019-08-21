require 'rest-client'

module Resolvers
  class WeatherStationApi < Resolvers::Base
    type [Types::WeatherStationType], null: true
  
    BASE_URL = "https://samples.openweathermap.org/data/3.0/stations?appid=21d7d516dddf5ff113e4b67fd0e93229"

    def resolve
      response = RestClient.get BASE_URL
      JSON.parse(response)
    end
  end
end