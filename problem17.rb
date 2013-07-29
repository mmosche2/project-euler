def convert_to_string(num)
	if num == 0
		num_string = ""
	elsif num == 1
		num_string = "one"
	elsif num == 2
		num_string = "two"
	elsif num == 3
		num_string = "three"
	elsif num == 4
		num_string = "four"
	elsif num == 5
		num_string = "five"
	elsif num == 6
		num_string = "six"
	elsif num == 7
		num_string = "seven"
	elsif num == 8
		num_string = "eight"
	elsif num == 9
		num_string = "nine"
	elsif num == 10
		num_string = "ten"
	elsif num == 11
		num_string = "eleven"
	elsif num == 12
		num_string = "twelve"
	elsif num == 13
		num_string = "thirteen"
	elsif num == 14
		num_string = "fourteen"
	elsif num == 15
		num_string = "fifteen"
	elsif num == 16
		num_string = "sixteen"
	elsif num == 17
		num_string = "seventeen"
	elsif num == 18
		num_string = "eighteen"
	elsif num == 19
		num_string = "nineteen"
	end

	return num_string
end

def convert_tens(num)
	if num == 2
		num_string = "twenty"
	elsif num == 3
		num_string = "thirty"
	elsif num == 4
		num_string = "forty"
	elsif num == 5
		num_string = "fifty"
	elsif num == 6
		num_string = "sixty"
	elsif num == 7
		num_string = "seventy"
	elsif num == 8
		num_string = "eighty"
	elsif num == 9
		num_string = "ninety"
	end

	return num_string
end

def convert_hundreds(num)
	if num == 1
		num_string = "onehundred"
	elsif num == 2
		num_string = "twohundred"
	elsif num == 3
		num_string = "threehundred"
	elsif num == 4
		num_string = "fourhundred"
	elsif num == 5
		num_string = "fivehundred"
	elsif num == 6
		num_string = "sixhundred"
	elsif num == 7
		num_string = "sevenhundred"
	elsif num == 8
		num_string = "eighthundred"
	elsif num == 9
		num_string = "ninehundred"
	end

	return num_string
end


sum = 0
x = 1

while x < 1001
	num_string = ""
	hundreds_string = ""
	tens_string = ""
	digit_string = ""

	if x < 20
		num_string = convert_to_string(x)
		num = num_string.length
		sum = sum + num
	elsif x < 100
		ten_val = x / 10
		tens_string = convert_tens(ten_val)

		remainder = x % 10
		digit_string = convert_to_string(remainder)

		num_string = tens_string + digit_string
		
		num = num_string.length
		sum = sum + num
	elsif x < 1000
		hundred_val = x / 100
		hundreds_string = convert_hundreds(hundred_val)

		remainder_tens = x % 100
		tens_val = remainder_tens / 10

		if tens_val < 2
			# go here if its in the teens
			digit_string = convert_to_string(remainder_tens)
		else
			tens_string = convert_tens(tens_val)
			remainder_digits = remainder_tens % 10
			digit_string = convert_to_string(remainder_digits)
		end

		if (tens_string.length > 0 || digit_string.length > 0)
			num_string = hundreds_string + "and" + tens_string + digit_string
		else
			num_string = hundreds_string
		end
		# puts "hundreds_string: #{hundreds_string}"
		# puts "tens_string: #{tens_string}"
		# puts "num_string: #{num_string}"
		# puts "num_string: #{num_string}"
		
		num = num_string.length
		sum = sum + num
	elsif x == 1000
		num_string = "onethousand"
		num = num_string.length
		sum = sum + num
	end

	x = x +1 
end

puts sum