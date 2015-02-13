def make_out_word(out,word)
	if out.length == 4
		str = out[0] + out[1] + out[2] + out[3]
		puts str[0] + str[1] + word + str[2] + str[3]
	end
end

make_out_word('<<>>','Yay')
make_out_word('<<>>','WooHoo')
make_out_word('[[]]','word')