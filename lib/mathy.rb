class Mathy

    # ruby rewrites of the recursive math functions found at:
    #
    # http://www.arl.wustl.edu/~jst/cse/131/Notes/Recursion/recursion.html
    #

    #add
    def self.add(i,j)
        #counters
        if i == 0
            j       #return value of j counter
        else
            i-=1    #decrease i counter
            j+=1    #increase j counter
            add(i,j)
        end
    end

    #primality

    #helper 1
    #is there a factor in the range k to n?
    def self.factor_in_range(k,n)
        if k >= n                           # is the range empty?
            false                           # the range is empty so there are
                                            # no factors in the range
        elsif n % k == 0                    # is n divisible by k?
            true                            # yes, we found a factor, namely k
        else                                # k is not a factor
            factor_in_range(k+1,n)          # so let's see if there's a factor
        end                                 # among the values in the rest
                                            # of the range
    end

    #duh
    def self.is_prime(n)
       n > 1 && !factor_in_range(2, n)
    end

    #gcd

    #gcd brute
    def self.gcd_brute(m,n)
        # The idea is to try all integers from n down until finding one that divides m and n evenly.
        
        # First, define tryDivisor that takes in m, n, and a guess. If the guess works, then it returns the guess. Otherwise, it tries a smaller guess.
        def try_divisor(m,n,g)
            if (((m % g) == 0) && ((n % g) == 0))
                g
            else
                try_divisor(m, n, g-1)
            end
        end

        try_divisor(m,n,n)  #use n as our first guess
    end

    #gcd euclid

    def self.gcd_euclid()
        
    end

    #gcd dijkstra's algorithm

    def self.gcd_dijk(m,n)
        if m == n 
            m
        elsif m > n
            gcd_dijk(m-n,n)
        else
            gcd_dijk(m,n-m)
        end
    end

end