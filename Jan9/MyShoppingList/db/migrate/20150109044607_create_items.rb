class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :code
      t.decimal :price
      t.integer :shop_id

      t.timestamps
    end
  end
end
