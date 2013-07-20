max = ARGV[0].to_i
first_multiple = ARGV[1].to_i
second_multiple = ARGV[2].to_i

def is_multiple_of(num,first,second)
    if num % first == 0 || num % second == 0
        return true
    else
        return false
    end
end

#numbers below 1000 as array
numbers = (1..max).to_a

multiples = numbers.select do |number|
    is_multiple_of(number,3,5)
end

sum_multiples = multiples.reduce(:+)

puts "The sum of all multiples of "+first_multiple.to_s+" and "+second_multiple.to_s
puts "That are below the number "+max.to_s+" is : "+sum_multiples.to_s