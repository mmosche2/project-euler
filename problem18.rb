pyramid = []
line_array = []

temp_sum = 0
current_sum = 0

x = 0
File.open("problem18_textfile.txt", "r").each_line do |line|
	line_array = line.split
	pyramid[x] = line_array
	x = x + 1
end



def sum_children(row, col) 
	if row > pyramid.length
		return pyramid[row]
	end
	if col > pyramid[row].length
		return pyramid[row][col]
	end
	temp_sum1 = temp_sum + sum_children(row + 1, col)
	temp_sum2 = temp_sum + sum_children(row + 1, col + 1)
end


(0..pyramid.length).each do |x|
	(0..pyramid[x].length).each do |y|

	end
end

puts "sum: #{pyramid.length}"
