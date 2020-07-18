class AddUserReferenceToGardens < ActiveRecord::Migration[6.0]
  def change
    add_reference :gardens, :user, foreign_key: true
  end
end
