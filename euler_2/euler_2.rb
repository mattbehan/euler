# returns the first n fibonacci numbers, we want this to take in a certain number and return all values 

# def fibonacci (n)
# 	return fibonacci(n-1) + fibonacci(n-2)
# end


first = 1
second = 2
next_num = 3

series = [first, second]

until next_num > 4000000

	series << next_num

	placeholder = next_num + second
	first = second
	second = next_num
	next_num = placeholder

end

print series.select{|num| num.even? }.sum