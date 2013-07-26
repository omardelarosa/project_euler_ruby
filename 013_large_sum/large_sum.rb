def get_numbers()
    f = File.open('./large_sum.txt','r')

    numbers = []

    f.each_line do |line|
        if line
            numbers << line.to_i
        end
    end

    f.close

    return numbers
end

numbers = get_numbers()

sum = 0

numbers.each do |num|
    sum += num
end

sum_str = sum.to_s
puts "The first 10 digits are: "+sum_str[0,10]
puts "========================================"
puts "The entire sum is: "+sum_str
