def left2(str)
	if str.length > 2
		string = str[0] + str[1]
		newstring = str[2] + str[3] + str[4]
		puts newstring + string
	else 
		puts str
	end
end

left2('Hello')
