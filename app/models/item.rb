class Item < ApplicationRecord
    belongs_to :category
    belongs_to :user
<<<<<<< HEAD
    has_many :transactions
=======
    has_many :bookings
>>>>>>> master
end 
 