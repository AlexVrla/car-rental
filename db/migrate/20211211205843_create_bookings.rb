class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :departure_date
      t.date :arrival_date
      t.integer :departure_time
      t.integer :arrival_time
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.references :location

      t.timestamps
    end
  end
end
