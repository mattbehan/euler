hash = {2 => 1}
[*3..1000000].each do |number|
	count = 0
	x = number
	while x > 1
		if x.even?
			x = x/2
		else
			count += 1
			x = ( x * 3 ) + 1
		end
	end
	if count > hash.values[0]
		hash = {number => count}
		puts "updating: #{hash}"
	end
end

puts "final answer: #{hash}"
