class Garden < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :bookings, dependent: :destroy
end
