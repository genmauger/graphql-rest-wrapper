module Types
  module Book
    class IsbnType < Types::BaseObject
      field :isbn10, String, null: false,
        description: "Rank of the book"
      field :isbn13, String, null: false,
        description: "Rank of the book"
    end
  end
end
