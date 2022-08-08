class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.time :from_time
      t.time :to_time
      t.string :status
      t.belongs_to :user, class_name: "user", foreign_key: "user_id"
      t.belongs_to :service, class_name: "service", foreign_key: "service_id"

      t.timestamps
    end
  end
end
