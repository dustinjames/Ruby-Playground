=begin 

	- Ask User to provide temperature today
	- Store User temp in variable
	- Ask User to provide percent chance of precipitation today from a value of 0 - 100
	- Store User precip in variable
	- Ask User to provide temp next day
	- Store User next day temp in variable
	- Ask User for percent precip for next day
	- Store next day precip in variable
	etc....For 5 days of data
	- Push all values into the corresponding array

=end

class Array 
	def sum
		self.inject {|sum,x| sum + x}
	end
end

temp_array = []
precip_array = []

puts 'Please enter day 1\'s temperature in degree\'s celcius:'
temp_one = gets.chomp
	if temp_one.to_i <= -50
		puts 'How did you get to Ice Station Zeta?'
	elsif temp_one.to_i >= 50
		puts 'How did you end up on the Sun?'
	end

puts 'Please enter day 2\'s temperature in degree\'s celcius:'
temp_two = gets.chomp
	if temp_two.to_i <= -50
		puts 'How did you get to Ice Station Zeta?'
	elsif temp_two.to_i >= 50
		puts 'How did you end up on the Sun?'
	end

puts 'Please enter day 3\'s temperature in degree\'s celcius:'
temp_three = gets.chomp
	if temp_three.to_i <= -50
		puts 'How did you get to Ice Station Zeta?'
	elsif temp_three.to_i >= 50
		puts 'How did you end up on the Sun?'
	end

puts 'Please enter the day 4\'s temperature in degree\'s celcius:'
temp_four = gets.chomp
	if temp_four.to_i <= -50
		puts 'How did you get to Ice Station Zeta?'
	elsif temp_four.to_i >= 50
		puts 'How did you end up on the Sun?'
	end

puts 'Please enter day 5\'s temperature in degree\'s celcius:'
temp_five = gets.chomp
	if temp_five.to_i <= -50
		puts 'How did you get to Ice Station Zeta?'
	elsif temp_five.to_i >= 50
		puts 'How did you end up on the Sun?'
	end	

temp_array.push temp_one.to_i
temp_array.push temp_two.to_i
temp_array.push temp_three.to_i
temp_array.push temp_four.to_i
temp_array.push temp_five.to_i

puts 'Please enter day 1\'s percent chance of precipitation (0 - 100):'
precip_one = gets.chomp
while precip_one.to_i > 100 || precip_one.to_i < 0
	puts 'Please re-enter day 1\'s percent chance of precipitation using a value between 0 and 100:'
	precip_one = gets.chomp
end

puts 'Please enter day 2\'s percent chance of precipitation (0 - 100):'
precip_two = gets.chomp
while precip_two.to_i > 100 || precip_two.to_i < 0
	puts 'Please re-enter day 2\'s percent chance of precipitation using a value between 0 and 100:'
	precip_two = gets.chomp
end

puts 'Please enter day 3\'s percent chance of precipitation (0 - 100):'
precip_three = gets.chomp
while precip_three.to_i > 100 || precip_three.to_i < 0
	puts 'Please re-enter day 3\'s percent chance of precipitation using a value between 0 and 100:'
	precip_three = gets.chomp
end

puts 'Please enter day 4\'s percent chance of precipitation (0 - 100):'
precip_four = gets.chomp
while precip_four.to_i > 100 || precip_four.to_i < 0
	puts 'Please re-enter day 4\'s percent chance of precipitation using a value between 0 and 100:'
	precip_four = gets.chomp
end

puts 'Please enter day 5\'s percent chance of precipitation (0 - 100):'
precip_five = gets.chomp
while precip_five.to_i > 100 || precip_five.to_i < 0
	puts 'Please re-enter day 5\'s percent chance of precipitation using a value between 0 and 100:'
	precip_five = gets.chomp
end

precip_array.push precip_one.to_i
precip_array.push precip_two.to_i
precip_array.push precip_three.to_i
precip_array.push precip_four.to_i
precip_array.push precip_five.to_i


def precip_eval array
	array.each_index do |x|
		if array[x].to_i <= 10
			array[x] = 1
		elsif array[x].to_i >10 && array[x].to_i <= 20
			array[x] = 2
		elsif array[x].to_i >20 && array[x].to_i <= 30
			array[x] = 3
		elsif array[x].to_i >30 && array[x].to_i <= 40
			array[x] = 4
		elsif array[x].to_i >40 && array[x].to_i <= 50
			array[x] = 5
		elsif array[x].to_i >50 && array[x].to_i <= 60
			array[x] = 6
		elsif array[x].to_i >60 && array[x].to_i <= 70
			array[x] = 7
		elsif array[x].to_i >70 && array[x].to_i <= 80
			array[x] = 8
		elsif array[x].to_i >80 && array[x].to_i <= 90
			array[x] = 9
		else
			array[x] = 10
		end
	end
end

def temp_eval array
	array.each_index do |x|
		if array[x].to_i <= 0
			array[x] = 10
		elsif array[x].to_i >0 && array[x].to_i <= 10
			array[x] = 8
		elsif array[x].to_i >10 && array[x].to_i <= 20
			array[x] = 6
		elsif array[x].to_i >20 && array[x].to_i <= 30
			array[x] = 4
		elsif array[x].to_i >30 && array[x].to_i <= 40
			array[x] = 2
		else
			array[x] = 1
		end
	end
end

temp_eval temp_array
precip_eval precip_array

trange_one = temp_array[0..2].sum
trange_two = temp_array[1..3].sum
trange_three = temp_array[2..4].sum

prange_one = precip_array[0..2].sum
prange_two = precip_array[1..3].sum
prange_three = precip_array[2..4].sum

weighted_average_one = (trange_one + prange_one) / 2
weighted_average_two = (trange_two + prange_two) / 2
weighted_average_three = (trange_three + prange_three) / 2

puts weighted_average_one
puts weighted_average_two
puts weighted_average_three

if weighted_average_one < weighted_average_two && weighted_average_one < weighted_average_three
	puts 'The Best Day of this 5 Day Range to wash your car is DAY 1'
elsif weighted_average_two < weighted_average_one && weighted_average_two < weighted_average_three
	puts 'The Best Day of this 5 Day Range to wash your car is DAY 2'
else
	puts 'The Best Day of this 5 Day Range to wash your car is DAY 3'
end


=begin
	- Determine a method to evaluate the values
	- Put values in arrays, then loop through each index of the array and assign a weighted value to each index depending on a set range.  Precipitation should be weighted higher as it is more likely to fuck up a car wash.
	- Seperate array values (precip and temp) into six seperate arrays starting with (Day 1, Day 2, Day 3) then (Day 2, Day 3, Day 4) and finally (Day 3, Day 4, Day 5)
	- Add the values from precip array 1 and temp array 1 and then divide by 3.  Do the same for the remaining arrays and their partners.
	- Evaluate the results - the array pair with the lowest weighted average will be selected as the best day range to wash your car.
	- If range 1 wins then Day 1 is the best day to wash your car.  If range 2 wins then Day 2 is the best day to wash your car.  If range 3 wins Day 3 is the best day to win your car.
	
=end