module Types
  class QueryType < Types::BaseObject
    field :all_tickets, [TicketType], null: false

    def all_tickets
      Ticket.all
    end
  end
end
