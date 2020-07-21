class Garden < ApplicationRecord
    has_one_attached :photo
    has_many :bookings, dependent: :destroy
    has_many :reviews, through: :bookings, dependent: :destroy
    belongs_to :user

    validates :name, :description, :price, :capacity, presence: true
end
