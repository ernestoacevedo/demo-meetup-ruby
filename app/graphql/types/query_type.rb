module Types
  class QueryType < Types::BaseObject
    field :all_tickets, [TicketType], null: false
    field :ticket, TicketType, null: true do
      description "Find a ticket by id"
      argument :id, String, required: true
    end
    field :all_bus_operators, [BusOperatorType], null: false

    def all_tickets
      Ticket.all
    end

    def ticket(id:)
      Ticket.find(id)
    end

    def all_bus_operators
      BusOperator.all
    end
  end
end
