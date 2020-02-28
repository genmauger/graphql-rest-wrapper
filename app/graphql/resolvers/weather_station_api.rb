require 'rest-client'

module Resolvers
  class WeatherStationApi < Resolvers::Base
    type [Types::Weather::WeatherStationType], null: true

    argument :id, String, required: false

    def resolve(id: nil)
      response = RestClient.get "https://samples.openweathermap.org/data/3.0/stations?appid=#{id}"
      JSON.parse(response)
    end
  end
end