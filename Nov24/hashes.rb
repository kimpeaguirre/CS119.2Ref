driver = {
					:name => "Happy",
					:id_number => "060081"
		}


my_hash = {
					:name => "Car", 
					:color => "Red", 
					:num_wheels => "4",
					driver: driver
					}


puts my_hash[:name]
puts my_hash[:color]
puts my_hash[:num_wheels]
puts my_hash[:driver][:name]

#my_hash.each do |item|
#		puts item
#	end

my_hash.each_pair do |key, value|
		puts "#{key}:" "#{value}"
end	