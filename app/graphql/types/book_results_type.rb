module Types
  class BookResultsType < Types::BaseObject
    field :status, String, null: false,
      description: "Status of the response"
    field :copyright, String, null: false,
      description: "Copywrite NY Times information"
    field :num_results, Integer, null: true,
      description: "Number of books found in query"
    field :last_modified, String, null: true,
      description: "Date of last modification"
    field :results, BookResultsInformationType, null: true,
      description: "Information relating to book results search"
  end
end
