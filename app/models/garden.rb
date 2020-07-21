class Garden < ApplicationRecord
    has_many_attached :photos
    has_many :bookings, dependent: :destroy
    has_many :reviews, through: :bookings, dependent: :destroy
    belongs_to :user

    validates :name, :description, :price, :capacity, presence: true
end
