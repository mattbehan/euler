
prime_numbers = [2]
array = [*2..1999999]
array.each do |x|
	puts x
	if x.even?
		next
	end
	if prime_numbers.none? {|prime| x % prime == 0}
		prime_numbers << x 
		puts "updating"
		puts x
	end
end

puts "prime_numbers cummin up"
puts "________________________________________________________________________________________________________________________________________________________________________________________________________________________"
puts prime_numbers

puts "total"
total = prime_numbers.reduce(0) {|sum, number| sum += number}
puts "total: #{total}"
# for a single number, you only have to test up to the square root of that number
# should only have to test for unique numbers..... thus should test the prime numbers


