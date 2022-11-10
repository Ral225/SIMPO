class CreateProductions < ActiveRecord::Migration[7.0]
  def change
    create_table :productions do |t|
      t.date :date
      t.string :weather
      t.references :fleet, null: false, foreign_key: true
      t.float :sarting_counter
      t.float :ending_counter
      t.time :starting_hour
      t.time :ending_hour
      t.integer :daily_hour_work
      t.string :contrat_type
      t.string :work_location
      t.references :teammate, null: false, foreign_key: true
      t.integer :total_mineral_loads
      t.integer :total_sterile_loads
      t.integer :total_loads
      t.timestamps
    end
  end
end
