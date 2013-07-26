def is_prime(n)
    for d in 2..(Math.sqrt(n))
        if (n % d) == 0
            return false
        end
    end
    true
end

#initial values
prime_counter = 0
number = 2
last_prime = 0
sum_primes = 0

while prime_counter < 85000
    if is_prime(number)
        last_prime = number
        sum_primes += number
        prime_counter += 1
        number +=1
    else
        number +=1
    end
end

number -= 1
puts "Sum of Primes is: "+sum_primes.to_s
puts "Last prime is: "+last_prime.to_s