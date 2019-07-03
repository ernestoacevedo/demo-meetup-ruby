class AddBusOperatorToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :bus_operator, foreign_key: true
  end
end
