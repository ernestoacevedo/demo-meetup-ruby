class CreateBusOperators < ActiveRecord::Migration[5.2]
  def change
    create_table :bus_operators do |t|
      t.string :official_name
      t.string :internal_name

      t.timestamps
    end
  end
end
