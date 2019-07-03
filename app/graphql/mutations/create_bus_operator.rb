module Mutations
  class CreateBusOperator < Mutations::BaseMutation
    argument :official_name, String, required: true
    argument :internal_name, String, required: true

    type Types::BusOperatorType

    def resolve(official_name: nil, internal_name: nil)
      BusOperator.create!(
        official_name: official_name,
        internal_name: internal_name
      )
    end
  end
end