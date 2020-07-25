class AddGardenToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :garden, foreign_key: true
  end
end
