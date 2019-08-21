module Types
  class QueryType < Types::BaseObject
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    field :weather_station_type, WeatherStationType, null: false,
      resolver: Resolvers::WeatherStationApi,
      description: "Weather station"
      def weather_station_type
        WeatherStation.all
      end
    field :book_results_type, BookResultsType, null: false,
      resolver: Resolvers::BookResultsApi,
      description: "New York TImes bestsellers list by date and/or genre"
  end
end
