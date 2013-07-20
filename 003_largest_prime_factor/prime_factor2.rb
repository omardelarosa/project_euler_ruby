# largest prime of 600851475143
require 'prime'

def is_factor(fact,number)
    if number%fact == 0
        return true
    else
        return false
    end
end

def get_prime_factors_of(num)
    largest_prime = 0
    max = (num/2.0).floor
    Prime.each(max) do |prime|
      if is_factor(prime,num)
        largest_prime = prime
      end
    end
    return largest_prime
end