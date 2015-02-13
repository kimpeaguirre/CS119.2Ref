class Item < ActiveRecord::Base

	belongs_to :shop, :class_name => 'Shop', :foreign_key => "shop_id"

	def to_s
    	self.name
  	end

end
