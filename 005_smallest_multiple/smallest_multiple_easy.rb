numbers = (1..20).to_a
lcm = numbers.inject(:lcm)
puts lcm