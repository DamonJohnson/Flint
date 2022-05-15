class Booking < ApplicationRecord
  belongs_to :item
  belongs_to :lendee
end
