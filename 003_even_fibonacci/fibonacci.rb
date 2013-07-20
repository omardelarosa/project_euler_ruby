#generate first n fibonacci

def fib(n)
    if n < 2
        return n
    else
        return (fib(n-1)+fib(n-2))
    end
end

fibs = []
i = 1

while fib(i) < 4000000
    fibs << fib(i)
    i+=1
end

even_fibs = fibs.select do |num|
    num.even?
end 

sum = even_fibs.reduce(:+)

puts sum