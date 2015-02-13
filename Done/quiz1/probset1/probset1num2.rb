def lucky_sum(a,b,c)

	temp = a + b + c
	if (a == 13) 
		puts '0'
	elsif (b == 13)
		puts a 
	elsif (c == 13)
		puts a + b 
	else
		puts temp
	end

end

lucky_sum(1,2,3)
lucky_sum(1,2,13)
lucky_sum(1,13,3)
