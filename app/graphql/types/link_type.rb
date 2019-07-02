module Types
  class LinkType < GraphQL::Schema::Object
    field :id, ID, null: false
    field :url, String, null: false
    field :description, String, null: false
  end
end