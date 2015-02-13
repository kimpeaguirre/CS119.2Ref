def black_jack(a,b)
	a > 0
	b > 0
	if (a == 21)
		puts a
	elsif (b == 21)
		puts b
	else
		puts 'the letter nearest to 21 :((( idk how'
	end
end

black_jack(19,21)
black_jack(21,19)
black_jack(19,22)