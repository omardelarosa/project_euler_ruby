#easy using prime module
require 'prime'

number = ARGV[0].to_i
array = Prime.prime_division(number)
answer = array[-1][0]**array[-1][1]

puts 'The largest prime multiple of '+number.to_s+' is: '+answer.to_s