class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.references :equipment, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.string :location
      t.integer :total_price

      t.timestamps
    end
  end
end
