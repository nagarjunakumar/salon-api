class CreateSalons < ActiveRecord::Migration[7.0]
  def change
    create_table :salons do |t|
      t.string :company_name
      t.string :gstin
      t.string :pan_number
      t.text :address
      t.integer :no_of_seats

      t.timestamps
    end
  end
end
