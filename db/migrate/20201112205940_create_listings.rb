class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.text :description
      t.integer :year_built
      t.integer :square_feet
      t.decimal :bedrooms, precision: 3, scale: 1
      t.decimal :bathrooms, precision: 3, scale: 1
      t.integer :floors
      t.boolean :availability
      t.integer :price
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
