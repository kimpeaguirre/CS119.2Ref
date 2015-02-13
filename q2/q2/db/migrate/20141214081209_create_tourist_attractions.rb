class CreateTouristAttractions < ActiveRecord::Migration
  def change
    create_table :tourist_spots do |t|
      t.string :name
      t.text :address
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
