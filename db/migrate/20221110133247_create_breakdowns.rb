class CreateBreakdowns < ActiveRecord::Migration[7.0]
  def change
    create_table :breakdowns do |t|
      t.references :fleet, null: false, foreign_key: true
      t.datetime :breakdown_date
      t.string :breakdown_description
      t.string :breakdown_solution
      t.string :breakdown_status
      t.datetime :exit_date
      t.timestamps
    end
  end
end
