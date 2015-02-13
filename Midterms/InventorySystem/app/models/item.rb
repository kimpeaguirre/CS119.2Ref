class Item < ActiveRecord::Base

	has_many :inventory_items

	def to_s
    	self.name
  	end

  	def num_items
    	self.items.count
  	end

end
