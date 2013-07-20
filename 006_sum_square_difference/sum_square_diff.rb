#make an array of all numbers 1 to 100
numbers = (1..100).to_a

#make empty array for squares of nums
squares_of_nums = []

#iterate over numbers
numbers.each do |num|
    #square each number
    square = num*num
    #add each square to squares_of_nums array
    squares_of_nums << square
end

#apply the + operation to each element of squares_of_nums array returning Int of sum
sum_of_squares = squares_of_nums.reduce(:+)

#apply the + operation to each element of numbers array returning Int of sum_of_nums
sum_of_nums = numbers.reduce(:+)

#set the difference between the sum_of_nums squared and the sum_of_squares to 'answer' variable
answer = sum_of_nums**2 - sum_of_squares

#print answer
puts answer