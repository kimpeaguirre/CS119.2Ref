class CreateShoppingLists < ActiveRecord::Migration
  def change
    create_table :shopping_lists do |t|
      t.string :name
      t.date :deadline
      t.decimal :total_price

      t.timestamps
    end
  end
end
