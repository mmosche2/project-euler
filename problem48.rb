sum = 0
x = 1

while x <= 1000
	series = x ** x
	sum = sum + series

	x = x + 1
end

puts "sum: #{sum}"