class AddAddressToGarden < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :address, :string
  end
end
