module Types
  module Review
    class ReviewType < Types::BaseObject
      field :status, String, null: false
      field :num_results, Integer, null: false
      field :results, [ReviewItemType], null: true
    end
  end
end