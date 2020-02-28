module Types
  module Book
    class BookType < Types::BaseObject
      field :rank, Integer, null: false,
        description: "Rank of the book"
      field :rank_last_week, Integer, null: true,
        description: "Previous week's ranking of that book"
      field :weeks_on_list, Integer, null: true,
        description: "Number of week's book has been on list"
      field :primary_isbn10, String, null: false,
        description: "Isbn10 number for book"
      field :primary_isbn13, String, null: false,
        description: "Isbn13 number for book"
      field :publisher, String, null: false,
        description: "Book publisher"
      field :description, String, null: false,
        description: "A description of the book"
      field :price, Integer, null: false,
        description: "Price of the book"
      field :title, String, null: false,
        description: "Book title"
      field :author, String, null: false,
        description: "Book author"
      field :contributor, String, null: true,
        description: "Any contributors to the book"
      field :book_image, String, null: true,
        description: "Link to the book image"
      field :amazon_product_url, String, null: true,
        description: "Link to the amazon product url"
      field :book_review_link, String, null: true,
        description: "Link to the book review"
      field :sunday_review_link, String, null: true,
        description: "Link to the Sunday review link"
      field :isbns, [IsbnType], null: false,
        description: "List of the isbns"
      field :buy_links, [BuyLinksType], null: false,
        description: "List of the book buy links"
    end
  end
end
