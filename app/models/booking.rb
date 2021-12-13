class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  belongs_to :departure_location, class_name: "Location", foreign_key: 'departure_location'
  belongs_to :arrival_location, class_name: "Location", foreign_key: 'arrival_location'
end
