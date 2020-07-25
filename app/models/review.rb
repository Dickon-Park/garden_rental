class Review < ApplicationRecord
  validates :description, presence: :true
  belongs_to :gardens
end
