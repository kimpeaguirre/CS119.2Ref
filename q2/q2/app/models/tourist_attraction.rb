class TouristAttraction < ActiveRecord::Base
	
	self.table_name = "tourist_spots"

	def to_s
    "#{self.name}"
  	end

end
