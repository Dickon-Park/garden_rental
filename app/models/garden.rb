class Garden < ApplicationRecord
    
    has_many :bookings, dependent: :destroy
    has_many :reviews, through: :bookings, dependent: :destroy
    belongs_to :user
    validates :name, :description, presence: true
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?
   
end
