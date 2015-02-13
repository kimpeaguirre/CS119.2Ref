class Shop < ActiveRecord::Base

	has_many :items

	def to_s
    	self.name
  	end

  	def num_items
    	self.items.count
  	end

end
