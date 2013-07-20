#make an array of all three digit numbers

a = (900..999).to_a
a_rev = a.reverse

def is_palindrome(number)

    number_as_string = number.to_s
    #get size of number in digits
    size = number_as_string.size
    #check if size is even?  
    half_size = size.even? ? size/2 : (size-1)/2
    #init i to mark index of first digit
    i = 0
    #init j to mark index of last digit
    j = size-1

    #make while loop
    while i <= half_size
        if number_as_string[i] == number_as_string[j] && i <= j-1
            i+=1
            j-=1
        else
            if number_as_string[i] == number_as_string[j]
                result = true
                break
            else
                result = false
                break
            end
        end
    end

    return result 
end

def get_all_products(numbers)
    products = []
    palindromes = []
    length = numbers.size
    a = 0
    b = 0

    while a < length-1
        while b < length-1
            
            products.push(numbers[a]*numbers[b])
            # puts b
            b+=1
        end
        # puts a
        a+=1
    end

    return products
    
end

def generate_next_largest_product(numbers)
    #loops through array
    array_length = numbers.size

    n1 = 0
    n2 = 0
    palindromes = []
    products = []

    #check all squares
    # !is_palindrome(numbers[n1]*numbers[n1])

    while n1 < array_length-1
        while n2 < array_length-1
            product = numbers[n1]*numbers[n2]
            # puts product
            products << product
            n2+=1
        end
        n2=0
        n1+=1
    end

    i = 0

    palindromes = products.select do |num|
        is_palindrome(num)
    end

    puts palindromes
end

generate_next_largest_product(a_rev)