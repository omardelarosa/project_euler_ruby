max = ARGV[0].to_i
first_multiple = ARGV[1].to_i
second_multiple = ARGV[2].to_i

sum = 0

(first_multiple...max).step(first_multiple).each do |num|
  sum += num
end

(second_multiple...max).step(second_multiple).each do |num|
  sum += num
end

((first_multiple*second_multiple)...max).step((first_multiple*second_multiple)).each do |num|
  sum -= num
end

puts sum

puts "The sum of all multiples of "+first_multiple.to_s+" and "+second_multiple.to_s
puts "That are below the number "+max.to_s+" is : "+sum.to_s