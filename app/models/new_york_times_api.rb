class NewYorkTimesApi

  API_KEY = "dEct4Q7v4wLSOX4Q5uKYq2s0aYM2BPz9".freeze

  def self.new_york_times_api_return_results(list_name_encoded)
    response = RestClient.get "https://api.nytimes.com/svc/books/v3/lists/2018-01-05/#{list_name_encoded}.json?api-key=#{API_KEY}"
    JSON.parse(response)
  end

end