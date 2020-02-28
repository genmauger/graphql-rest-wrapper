module Types
  module Book
    class BuyLinksType < Types::BaseObject
      field :name, String, null: false,
        description: "Name of book seller"
      field :url, String, null: false,
        description: "Purchase link"
    end
  end
end
