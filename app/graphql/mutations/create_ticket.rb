module Mutations
  class CreateTicket < GraphQL::Schema::RelayClassicMutation
    argument :description, String, required: true
    argument :url, String, required: true

    type Types::TicketType

    def resolve(description: nil, url: nil)
      Ticket.create!(
        description: description,
        url: url,
        user: context[:current_user]
      )
    end
  end
end
