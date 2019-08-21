module Types
  class WeatherStationType < Types::BaseObject
    field :id, Integer, null: false,
      description: "The id of the weather station"
    field :created_at, String, null: false,
      description: "The date the weather station was added"
    field :updated_at, String, null: false,
      description: "The date the weather station was updated"
    field :external_id, String, null: false,
      description: "External id of the weather station"
    field :name, String, null: false,
      description: "Name of the weather station"
    field :longitude, Integer, null: false,
      description: "Longitude"
    field :latitude, Integer, null: false,
      description: "latitude"
  end
end
