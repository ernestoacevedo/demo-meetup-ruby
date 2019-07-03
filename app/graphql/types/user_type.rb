module Types
    class UserType < GraphQL::Schema::Object
      field :id, ID, null: false
      field :name, String, null: false
      field :email, String, null: false
      field :password, String, null: false
    end
  end