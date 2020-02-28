module Types
  module Book
    class BookResultsInformationType < Types::BaseObject
      field :list_name, String, null: false,
        description: "Genre of the list returned"
      field :list_name_encoded, String, null: false,
        description: "Name of the list in encoded form"
      field :bestsellers_date, String, null: false,
        description: "Bestsellers Date"
      field :published_date, String, null: false,
        description: "Date at which the list was published"
      field :next_published_date, String, null: false,
        description: "Date next list will be published"
      field :previous_published_date, String, null: false,
        description: "Date of next list publication"
      field :normal_list_ends_at, Integer, null: false,
        description: "Number of books listed"
      field :updated, String, null: false,
        description: "How often the list is updated"
      field :books, [BookType], null: false,
        description: "The list of books"
    end
  end
end
