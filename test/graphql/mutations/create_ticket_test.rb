require 'test_helper'

class Mutations::CreateTicketTest < ActiveSupport::TestCase
  def perform(user: nil, **args)
    Mutations::CreateTicket.new(object: nil, context: {}).resolve(args)
  end

  test 'create a new ticket' do
    ticket = perform(
      title: 'title',
      description: 'description',
    )

    assert ticket.persisted?
    assert_equal ticket.description, 'description'
    assert_equal ticket.title, 'title'
  end
end
