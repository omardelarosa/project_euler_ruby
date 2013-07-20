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

#start with highest number (i.e. 20) then multiply by next lowest number

# num = 20

#check if the product of highest number times next lowest number is a multiple of all numbers below num
# if num*num-1 % num == 0
    #try num*num-2

#if it's not, increment number by * 1 and then check all muliples

# first_num = 20 * 1

# second_num = 20 * 2

def find_smallest_multiple(num,count,acc)
    if count == max
        return acc
    #if number is divisible by one last than the number
    elsif !check_a_num(num,count)
        acc*num
        return check_a_num(num,count)
        
        
    end
    puts num
end

def 