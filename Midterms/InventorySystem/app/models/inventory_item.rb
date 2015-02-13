class InventoryItem < ActiveRecord::Base
	belongs_to :item, :class_name => 'Item', :foreign_key => "item_id"
	belongs_to :inventory_transaction, :class_name => 'InventoryItem', :foreign_key => "inventory_item_id"
end
