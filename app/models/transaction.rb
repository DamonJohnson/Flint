class Transaction < ApplicationRecord
  belongs_to :item
  belongs_to :lendee
end
