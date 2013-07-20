def check_a_num(num,max)
    i = 1
    result = false
    while i <= max
        result = true
        if num % i != 0
            result = false
            break
        end
        i+=1
    end
    return result
end

def fact(n)
    if n == 0
        return 1
    else
        return n * fact(n-1)
    end
end

def lcm(counter,stack)
    
    if counter == 0
        return stack
    else
        stack.push([1,counter])
        return lcm(counter-1,stack)
    end
end

fact_20 = fact(20)
fractions = lcm(20,[])
fractions.map {|nums| nums[0] *= fact_20; nums[1] *= fact_20}
