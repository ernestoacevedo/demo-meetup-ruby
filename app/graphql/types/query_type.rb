module Types
  class QueryType < Types::BaseObject
    field :all_links, [LinkType], null: false

    def all_tickets
      Ticket.all
    end
  end
end
