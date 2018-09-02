num = 600851475143

def return_prime_factors number
	if number.even?
		largest_divisor = 2
	else
		largest_divisor = 3
	end
	result = number / largest_divisor
	remainder = number % largest_divisor
	prime_factors = []
	# take advantage of the fact that removing primes (as factors) means we only have to loop
	# until the factorized number is less than the reuslt * itself
	until result <= largest_divisor * largest_divisor
		puts "divisor #{largest_divisor}"
		puts "result #{result}"
		if remainder == 0
			puts "========="
			prime_factors << result
			puts result
			result = result / largest_divisor
			remainder = number % largest_divisor
			next
		end
		largest_divisor += 2
			remainder = number % largest_divisor
	end
	puts prime_factors
	return prime_factors

end

def prime_numbers_up_to n



end

# puts return_prime_factors(num)
puts return_prime_factors(15)

# method one:
# do the mathematical way for prime factorization... take each number and try to divide it by the smallest number. potentially log(n) squared

# method two:
# find all the prime factors up to that number. try to divide it by each one of it until the last number divides evenly
# sqrt(n) for 