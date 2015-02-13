def first_two(str)
	string = str[0] + str[1]
	if str.length < 2
		puts str 
	else str.length > 2
		puts string
	end
end

first_two('Hello')
first_two('abcdefg')
first_two('ab')
