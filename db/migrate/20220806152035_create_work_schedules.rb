class CreateWorkSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :work_schedules do |t|
      t.integer :week_day
      t.time :opens_at
      t.time :closes_at
      t.belongs_to :salon, class_name: "salon", foreign_key: "salon_id"

      t.timestamps
    end
  end
end
