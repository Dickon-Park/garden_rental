class Garden < ApplicationRecord
    has_many :reviews, through: :bookings, dependent: :destroy
    has_many :bookings, dependent: :destroy
    belongs_to :user
end
