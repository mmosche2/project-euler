total_sum = 0
x = 2

while x < 1000000

	sum = 0
	first = 0
	second = 0 
	third = 0
	fourth = 0
	fifth = 0
	sixth = 0

	if x.to_s.length == 6
		a,b,c,d,e,f = x.to_s.split('').map { |digit| digit.to_i }
		first = a * a * a * a * a
		second = b * b * b * b * b
		third = c * c * c * c * c
		fourth = d * d * d * d * d
		fifth = e * e * e * e * e
		sixth = f * f * f * f * f
	elsif x.to_s.length == 5
		a,b,c,d,e = x.to_s.split('').map { |digit| digit.to_i }
		first = a * a * a * a * a
		second = b * b * b * b * b
		third = c * c * c * c * c
		fourth = d * d * d * d * d
		fifth = e * e * e * e * e
	elsif x.to_s.length == 4
		a,b,c,d = x.to_s.split('').map { |digit| digit.to_i }
		first = a * a * a * a * a
		second = b * b * b * b * b
		third = c * c * c * c * c
		fourth = d * d * d * d * d
	elsif x.to_s.length == 3
		a,b,c = x.to_s.split('').map { |digit| digit.to_i }
		first = a * a * a * a * a
		second = b * b * b * b * b
		third = c * c * c * c * c
	elsif x.to_s.length == 2
		a,b = x.to_s.split('').map { |digit| digit.to_i }
		first = a * a * a * a * a
		second = b * b * b * b * b
	elsif x.to_s.length == 1
		a = x
		first = a * a * a * a * a
	end

	sum = first + second + third + fourth + fifth + sixth

	if x == sum
		total_sum = total_sum + x
		puts x
	end

	x = x + 1

end

puts "total_sum: #{total_sum}"