module Types
  class TicketType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: false
    field :level, Integer, null: false
    field :created_by, UserType, null: true, method: :user
    field :bus_operator, BusOperatorType, null: false, method: :bus_operator
  end
end
