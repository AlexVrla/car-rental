class Location < ApplicationRecord
  has_many :occurrences_as_departure_location, class_name: "Booking", foreign_key: "location_id"
  has_many :occurrences_as_arrival_location, class_name: "Booking", foreign_key: "location_id"
end
