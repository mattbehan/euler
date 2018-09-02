# ------------
# PROBLEM
# ------------
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.

# ------------
# All we need to do here is loop through years 1901-2000 with an inner loop for months, and for each y/m combination, create a date for the first of the month and see if it was a sounday. If so, add it to the total.
# ------------
require 'date'

total = 0
for y in 1901..2000
	for m in 1..12
		if Date.new(y, m, 1).sunday? then total +=1 end
	end
end
puts "From 1901-2000, there were #{total} Sundays that landed on the first of the month"

# ------------
# When I originally read this problem, I was tired as hell, and I read it as how many Sundays were there in the first month of the year 2000. Yikes. Well I decided to just finish the solution based on that initial interpretation since it's interesting
# ------------
# to count the days in between, making sure to account for leapyears
# Then, divide the number of days in between and skip to the next day based on the remainder 

def is_leapyear?(year)
	if year % 4 == 0
		if year % 100 == 0 
			if year % 400 == 0
				return true
			else
				return false
			end
		else
			return true
		end
	else
		return false
	end
end

leapyears = [*1901..2000].count {|year| is_leapyear?(year)}
days_in_between = 365*100+25+1 #add 1 because Jan 1 is actually the 366th day
days_to_skip_to = days_in_between % 7
days_of_week = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday) * 6
days_in_jan_2000 = days_of_week[days_to_skip_to..days_to_skip_to+31]
sundays_in_jan_2000 = days_in_jan_2000.select {|day| day == "Sunday"}.count
puts "We skip #{days_to_skip_to} days ahead to see the first of the month of jan 2000"
puts "The days of the month in jan 2000 are #{days_in_jan_2000}"
puts "There are #{sundays_in_jan_2000} Sundays in January, 2000"
