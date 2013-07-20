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

while prime_counter < 10001
    if is_prime(number)
        last_prime = number
        prime_counter += 1
        number +=1
    else
        number += 1
    end
end

#remove last iterated val

number-=1
puts "Prime Index: "+prime_counter.to_s
puts "Prime Number: "+number.to_s