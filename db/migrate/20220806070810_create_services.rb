class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :duration
      t.decimal :price
      t.belongs_to :salon, class_name: "salon", foreign_key: "salon_id"

      t.timestamps
    end
  end
end
