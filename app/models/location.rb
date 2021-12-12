class Location < ApplicationRecord
  has_many :departure_locations, class_name: "Booking", foreign_key: "departure_location"
  has_many :arrival_locations, class_name: "Booking", foreign_key: "arrival_location"
end
