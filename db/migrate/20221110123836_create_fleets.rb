class CreateFleets < ActiveRecord::Migration[7.0]
  def change
    create_table :fleets do |t|
      t.string :company_parc_number
      t.string :fleet_type
      t.string :brand
      t.string :current_client
      t.string :location
      t.float :counter
      t.float :average_fuel_consumption
      t.integer :fuel_capacity
      t.integer :year_model
      t.string :serial_number
      t.date :buying_date
      t.string :fleet_status
      t.integer :benne_capacity

      t.timestamps
    end
  end
end
