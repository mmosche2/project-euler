sum = 0
x = 0

while x < 1000
	if x%3==0
		sum = sum + x
	elsif x%5==0
		sum = sum + x
	end
	x = x+1
end

puts sum