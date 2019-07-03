module Types
  class QueryType < Types::BaseObject
    field :all_tickets, [TicketType], null: false
    field :ticket, [TicketType], null: false do
      argument :id, String, required: true
    end

    def all_tickets
      Ticket.all
    end

    def ticket(id: nil)
      Ticket.where(id)
    end
  end
end
