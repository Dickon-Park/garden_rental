class Review < ApplicationRecord
  validates :description, presence: :true, uniqueness: :true
  belongs_to :garden
end
