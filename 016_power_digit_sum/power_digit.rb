#store 2^1000 as big num
big_num = 2**1000

#turn the num into string
big_num_str = big_num.to_s

#turn the big string into an array of chars
big_num_arr = big_num_str.each_char.to_a

#initialize sum accumulator
sum = 0

#iterate over big_num_arr and add each num to the sum acc
big_num_arr.each {|num| sum += num.to_i }

#output answer
puts "The sum of the digits of 2^1000 is: "+sum.to_s