class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.date :date
      t.time :starting_hour
      t.time :ending_hour
      t.string :attendance_status
      t.string :week_day
      t.boolean :public_holiday
      t.references :teammate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
