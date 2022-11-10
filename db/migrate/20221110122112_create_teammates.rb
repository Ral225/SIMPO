class CreateTeammates < ActiveRecord::Migration[7.0]
  def change
    create_table :teammates do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.string :department
      t.timestamps
    end
  end
end
