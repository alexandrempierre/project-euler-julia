#!/usr/bin/env julia

function sieveOfEratosthenes(n::Integer)
    upper = isqrt(n)
    sieve = [true for i in 1:upper]
    sieve[1] = false
    
    for (i,p) in enumerate(sieve)
        if p
            for j in i*i:i:upper
                sieve[j] = false
            end
        end
    end

    (i for (i,p) in pairs(sieve) if p)
end

function main()
    #n = 13_195
    n = 600_851_475_143
    sieve = sieveOfEratosthenes(n)
    maxPrimeFactor = maximum(p for p in sieve if rem(n, p) == 0)
    
    println(maxPrimeFactor)

    return nothing
end

main()
