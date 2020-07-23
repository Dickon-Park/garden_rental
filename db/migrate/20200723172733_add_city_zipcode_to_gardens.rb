class AddCityZipcodeToGardens < ActiveRecord::Migration[6.0]
  def change
    add_column :gardens, :city, :string
    add_column :gardens, :zipcode, :string
  end
end
