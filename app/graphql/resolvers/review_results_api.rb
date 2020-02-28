require 'rest-client'

module Resolvers
  class ReviewResultsApi < Resolvers::Base
    API_KEY = "dEct4Q7v4wLSOX4Q5uKYq2s0aYM2BPz9".freeze

    type [Types::Review::ReviewType], null: true

    argument :isbn, Integer, required: false

    def resolve(isbn: nil)
      response = RestClient.get "https://api.nytimes.com/svc/books/v3/reviews.json?isbn=#{isbn}&api-key=#{API_KEY}"
      JSON.parse(response)
    end

  end
end
