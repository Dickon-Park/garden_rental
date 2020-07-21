class AddDetailsToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :price, :decimal
    add_column :gardens, :capacity, :Integer
    add_column :gardens, :image, :binary
  end
end
