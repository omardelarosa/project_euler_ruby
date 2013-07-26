#simple, low-overhead timer
require './../lib/simple_timer.rb'
t = SimpleTimer.new({start_now: true})

def fib(max)
    i = 2
    n = 0
    n_minus_1 = 1
    n_minus_2 = 0
    # sum = 0

    while i < max
        
        #set current value to the sum of the last two
        #this is the def. of fibonacci, basically
        n = n_minus_1 + n_minus_2

        #shift values and move 'bubble'

        #the last n-2th value is displaced by the current n-1st
        n_minus_2 = n_minus_1
        #the last n-1st value is displaced by the current value of n
        n_minus_1 = n

        #increment the iterator and repeat the process
        i+=1
    end
    #returns last value of n
    n
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