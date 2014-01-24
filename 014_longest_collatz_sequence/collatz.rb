max = ARGV[0].to_i

def solve(max)
  results = {
    "max_total" => 0,
    "max_total" => 0,
  }

  1.upto(max).each do |num|
    array = []
    new_num = num

    def get_next(num)
      if num === 1
        next_num = num
      elsif num % 2 == 0
        next_num = num/2
      elsif
        next_num = (3*num)+1
      end
        return next_num
    end

    while new_num != 1
      new_num = get_next(new_num)
      array << new_num
    end
    total = array.length+1
    results[num.to_s] = total

    if total > results["max_total"]
      results["max_total"] = total
      results["max_num"] = num
    end
    # p array
  end
  return results
end

results = solve(max)
puts "Max Num: #{results['max_num']}, Max Total: #{results['max_total']}"