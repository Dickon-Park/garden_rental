class Garden < ApplicationRecord
    has_many_attached :photos
    has_many :bookings, dependent: :destroy
    has_many :reviews, through: :bookings, dependent: :destroy
    belongs_to :user
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?
    validates :name, :description, :price, :capacity, :city, presence: true
end
