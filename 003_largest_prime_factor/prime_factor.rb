# largest prime of 600851475143

# ruby profiler
# require 'ruby-prof'
# RubyProf.start

def is_prime(n)
    for d in 2..(Math.sqrt(n))
        if (n % d) == 0
            return false
        end
    end
    true
end

def is_factor(fact,number)
    if number%fact == 0
        return true
    else
        return false
    end
end

def get_factors_of(num)
    factors = []
    i = 1
    half_num = num/2.0
    # if primes_only==true
    #     while i <= half_num
    #     if is_factor(i,num) and is_prime(i)
    #         factors << i
    #     end
    #     i+=1
    # end
    # else
    #     while i <= half_num
    #     if is_factor(i,num)
    #         factors << i
    #     end
    #     i+=1
    # end
    # end

    while i <= half_num
        if is_factor(i,num)
            factors << i
        end
        i+=1
        #if i is not prime
        if !is_prime(i)
            #make i prime
            while !is_prime(i)
                i+=1
            end
        end
    end

    return factors
end

def get_prime_factors_of(num)
    prime_factors = []
    i = 1
    half_num = num/2.0

    while i <= half_num
        if is_factor(i,num)
            prime_factors << i
        end
        i+=1
        #if i is not prime
        if !is_prime(i)
            #make i prime
            while !is_prime(i)
                i+=1
            end
        end
    end
    return prime_factors
end

def get_next_prime(start)
    i = start+1
    while !is_prime(i)
        i+=1
    end
    return i
end

def get_prime_factors_of_2(num)
    prime_factors = []
    i = 1
    # part_num = (num/2.0).floor

    if num % 2 == 0
        split_num = num/2
    elsif num % 3 == 0
        split_num = num/3
    else
        split_num = (num/2.0).floor
    end

    #reduce split_num to prime
    while split_num > 1 and !is_prime(split_num)
        split_num -= 1
    end

    while split_num > 1
        # puts half_num
        if is_factor(split_num,num) and is_prime(split_num)
            # prime_factors << split_num
            break
        end
        split_num-=1
        #if i is not prime
        
    end
    return split_num
end

def get_prime_factors_of_3(num,i,acc)
    if i == num
        return acc
    elsif num % acc[i] == 0
        acc << num
        return get_prime_factors_of_3(num,i+1,acc)
    else
        return get_prime_factors_of_3(num,i+1,acc)
    end
end

def get_largest_factor_of(num,primes_only=false)
    factors = []
    i = 1
    half_num = (num/2.0).floor

    if primes_only==true
        while half_num > 0
            # puts half_num
        if is_factor(half_num,num) and is_prime(half_num)
            # factors << half_num
            break
        end
        half_num-=1
    end
    else
        while half_num > 0
            # puts half_num
        if is_factor(half_num,num)
            # factors << half_num
            break
        end
        half_num-=1
    end
    end
    return half_num
end


# numbers = (1..100).to_a
# primes = []

# i = 1

# while i < 100

#     if is_prime(numbers[i])
#         primes << numbers[i]
#     end
#     i+=1
# end

# number = ARGV[0].to_i

# puts 'Largest Prime is: '
# puts get_largest_factor_of(number,true)

# #profiler
# result = RubyProf.stop
# # Print a flat profile to text
# printer = RubyProf::FlatPrinter.new(result)
# printer.print(STDOUT)
