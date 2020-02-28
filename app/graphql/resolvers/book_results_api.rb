require 'rest-client'

module Resolvers
  class BookResultsApi < Resolvers::Base
    type [Types::Book::BookResultsType], null: true

    argument :list_name_encoded, String, required: false

    def resolve(list_name_encoded: nil)
      NewYorkTimesApi.new_york_times_api_return_results(list_name_encoded)
    end

  end
end
