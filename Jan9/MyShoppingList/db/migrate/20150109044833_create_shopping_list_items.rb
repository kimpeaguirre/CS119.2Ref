class CreateShoppingListItems < ActiveRecord::Migration
  def change
    create_table :shopping_list_items do |t|
      t.integer :shopping_list_id
      t.integer :item_id
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
