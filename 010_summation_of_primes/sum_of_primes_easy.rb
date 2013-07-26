require 'prime'

current_sum = 0
last_prime = 0

Prime.each do |prime|
    if prime < 2000000
        last_prime = prime
        current_sum += prime
    else
        break
    end
end

puts "Last prime was: "+last_prime.to_s
puts "Sum is: "+current_sum.to_s