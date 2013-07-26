#simple, low-overhead timer
require './../lib/simple_timer.rb'
t = SimpleTimer.new({start_now: true})

def fib(n)
    if n < 2
        n
    else
        fib(n-1)+fib(n-2)
    end
end

#memoized val
current_fib = 0
i = 1
even_fibs = []

while current_fib < 4000000
    #
    current_fib = fib(i)
    if current_fib.even?
        even_fibs << current_fib
    end
    i+=1
end

sum = even_fibs.reduce(:+)

puts sum

# simple, low-overhead timer stop
t.stop