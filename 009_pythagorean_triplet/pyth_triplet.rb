array_of_triplets = []
c = 0
b = 0
a = 0

# def check_triplet(hash)

#     sum_all = hash[:a] + hash[:b] + hash[:c]
#     sum_two_squared = hash[:a]**2 + hash[:b]**2
#     if sum_all == 1000 and sum_two_squared == hash[:c]**2
#         return true
#     else
#         return false
#     end
# end

numbers = (1..1000).to_a
numbers_rev = numbers.reverse

numbers_rev.each do |c|
    numbers.each do |b|
        if c + b < 1000
            numbers.each do |a|
                if c + b + a <= 1000
                    if c + b + a == 1000 and c > b and b > a and c**2 == b**2+a**2
                        # puts c.to_s+' '+b.to_s+' '+a.to_s
                        triplet = {a: a,b: b,c: c}
                        array_of_triplets << triplet
                        break
                    end
                else
                    break
                end
            end
        else
            break
        end
    end
end

array_of_triplets.each do |triplet|
    puts "Valid triplet: C="+triplet[:c].to_s+", B="+triplet[:b].to_s+", A="+triplet[:a].to_s
    puts "Valid product: "+(triplet[:a]*triplet[:b]*triplet[:c]).to_s
end

# puts squarables