class AddPriceCapacityImageToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :price, :decimal
    add_column :gardens, :capacity, :integer
    add_column :gardens, :image, :binary
  end
end
