class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :departure_date
      t.date :arrival_date
      t.integer :departure_time
      t.integer :arrival_time
      t.belongs_to :user, null: false, index: true
      t.belongs_to :car, null: false, index: true
      t.belongs_to :location, index: true

      t.timestamps
    end
  end
end
