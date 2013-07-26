require 'prime'

# ruby profiler
# require 'ruby-prof'
# RubyProf.start

def triangle_num(n,acc)
    if n <= 1
        return acc
    else
        return triangle_num(n-1,acc+n)
    end 
end

def triangle_num2(n)
    return (n*(n+1))/2
end

def triangle_nums_1_to_(n,i,acc)
    if i > n
        return acc
    else
        acc << triangle_num2(i)
        i+=1
        return triangle_nums_1_to_(n,i,acc)
    end
end

def get_num_of_divisors(num)
    if num == 1
        return 1
    else
        array_of_factors = num.prime_division

        array_of_exps_plus_1 = []
        
        array_of_factors.each do |factor|
            array_of_exps_plus_1 << factor[1]+1
        end

        return array_of_exps_plus_1.reduce(:*)
    end
end

def get_triangle_num_with_over_n_divisors(n)

    i = 1
    max_num_divisors = 0
    new_triangle_num = 0
    last_index = 1

    while max_num_divisors < n
        last_index = i
        new_triangle_num = triangle_num2(i)
        new_divisors_num = get_num_of_divisors(new_triangle_num)
        if new_divisors_num > max_num_divisors
            max_num_divisors = new_divisors_num
        end
        i+=1
    end 
    puts "Max Num of Divisors: "+max_num_divisors.to_s
    puts "New Triangle Num Value: "+new_triangle_num.to_s
    puts "New Triangle Num Index: "+last_index.to_s
    return max_num_divisors
end

get_triangle_num_with_over_n_divisors(500)


#profiler
# result = RubyProf.stop
# # Print a flat profile to text
# printer = RubyProf::FlatPrinter.new(result)
# printer.print(STDOUT)