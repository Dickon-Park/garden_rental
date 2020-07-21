class AddAdressToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :city, :string 
    add_column :gardens, :country, :string 
    add_column :gardens, :zipcode, :string 
    add_column :gardens, :street, :string 
    add_column :gardens, :number, :string
  end
end
