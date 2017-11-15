input = ARGV[0]

input_array = input.split(" ").map(&:to_i)

grid = []
grid_length = Math.sqrt(input_array.length).to_i

grid_length.times do
	grid << input_array.slice!(0, grid_length)
end

max_product = 0

grid.each_index do |i|
	grid[i].each_index do |j|
	across = 1
	vertical = 1
	diagonal_right = 1
	diagonal_left = 1
	(0..3).each do |size|
	if ((i+size) < grid.size-1) && ((j+size) < grid.size-1)
		across *= grid[i+size][j]
		vertical *= grid[i][j+size]
		diagonal_right *= grid[i+size][j+size]
		diagonal_left *= grid[grid.size-1-(i+size)][j+size]
	end
	end

	if across > max_product
		max_product = across
	elsif vertical > max_product
		max_product = vertical
	elsif diagonal_right > max_product
		max_product = diagonal_right
	elsif diagonal_left > max_product
		max_product = diagonal_left
	end

	end
end

puts max_product

