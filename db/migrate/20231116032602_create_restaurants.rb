class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street
      t.string :city
      t.integer :zipcode

      t.timestamps
    end
  end
end
