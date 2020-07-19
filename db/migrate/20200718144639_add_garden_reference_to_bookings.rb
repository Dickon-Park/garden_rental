class AddGardenReferenceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :garden, foreign_key: true
  end
end
