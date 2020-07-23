class Booking < ApplicationRecord
    belongs_to :garden
    belongs_to :user
    has_many :reviews

    validates :date, presence: true, uniqueness: true
end
