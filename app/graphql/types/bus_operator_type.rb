module Types
  class BusOperatorType < Types::BaseObject
    field :id, ID, null: false
    field :official_name, String, null: false
    field :internal_name, String, null: false
    field :tickets, [TicketType], null: true
  end
end
