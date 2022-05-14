class Profile < ApplicationRecord
  belongs_to :user
  validates_associated :user # check if necessary
end
 