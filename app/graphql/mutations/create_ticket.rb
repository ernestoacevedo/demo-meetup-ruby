module Mutations
  class CreateTicket < Mutations::BaseMutation
    argument :description, String, required: true
    argument :title, String, required: true
    argument :level, Integer, required: true

    type Types::TicketType

    def resolve(description: nil, title: nil, level: nil)
      Ticket.create!(
        description: description,
        title: title,
        level: level,
        user: context[:current_user]
      )
    end
  end
end
