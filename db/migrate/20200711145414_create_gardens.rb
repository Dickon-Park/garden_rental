class CreateGardens < ActiveRecord::Migration[6.0]
  def change
    create_table :gardens do |t|
      t.string :index
      t.string :new
      t.string :create

      t.timestamps
    end
  end
end
