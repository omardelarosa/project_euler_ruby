range = (1...20).to_a

def check_a_num(num,max)
    #check if a number is a multiple of all numbers below max
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

def find_smallest_multiple(start,max)
    num = start
    max = max
    while !check_a_num(num,max)
        num+=1
    end
    puts num
    return num
end

def iterate(max)

    # if find_smallest_multiple(1,)


end

def fact(n)
    if n == 0
        return 1
    else
        return n * fact(n-1)
    end
end
