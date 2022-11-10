class CreateTeammates < ActiveRecord::Migration[7.0]
  def change
    create_table :teammates do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_title
      t.string :department
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
