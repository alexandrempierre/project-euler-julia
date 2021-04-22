#!/usr/bin/env julia

function multiplesSum(d::Integer, upper::Integer)::Integer
    sum(i for i in 0:d:(upper-1); init = 0)
end

function main()
    s = multiplesSum(3, 1000) + multiplesSum(5, 1000) - multiplesSum(15, 1000)
    println(s)

    return nothing
end

main()
