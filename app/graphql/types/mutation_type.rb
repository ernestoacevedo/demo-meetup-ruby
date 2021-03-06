module Types
  class MutationType < Types::BaseObject
    field :create_bus_operator, mutation: Mutations::CreateBusOperator
    field :create_ticket, mutation: Mutations::CreateTicket
    field :create_user, mutation: Mutations::CreateUser
    field :sign_in_user, mutation: Mutations::SignInUser
  end
end
