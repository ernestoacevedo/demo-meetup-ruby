module Mutations
  class CreateTicket < Mutations::BaseMutation
    argument :description, String, required: true
    argument :title, String, required: true
    argument :level, Integer, required: true
    argument :bus_operator, String, required: true

    type Types::TicketType

    def resolve(description: nil, title: nil, level: nil, bus_operator: nil)
      bo = BusOperator.find_by_internal_name(bus_operator)
      return nil unless bo
      Ticket.create!(
        description: description,
        title: title,
        level: level,
        user: context[:current_user],
        bus_operator: bo
      )
    end
  end
end
