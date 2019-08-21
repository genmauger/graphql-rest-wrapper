require 'rest-client'

module Resolvers
  class BookResultsApi < Resolvers::Base

    type [Types::BookResultsType], null: true

    BASE_URL = "https://api.nytimes.com/svc/books/v3/lists/2018-01-05/hardcover-fiction.json?api-key=dEct4Q7v4wLSOX4Q5uKYq2s0aYM2BPz9"

    def resolve
      response = RestClient.get BASE_URL
      JSON.parse(response)
    end
  end
end