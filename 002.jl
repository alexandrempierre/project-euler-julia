#!/usr/bin/env julia

function evenFibonacciSum(upper::Integer)::Integer
    t0::Integer = 1
    t1::Integer = 1
    s::Integer = 0

    while t1 <= upper
        if rem(t1, 2) == 0
            s += t1
        end
        
        t1 += t0
        t0 = t1 - t0
    end

    return s
end

function main()
    r = evenFibonacciSum(4_000_000)
    println(r)

    return nothing
end

main()
