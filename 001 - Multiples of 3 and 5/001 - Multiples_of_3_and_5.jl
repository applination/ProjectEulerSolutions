#=
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
Find the sum of all the multiples of 3 or 5 below 1000

=#

function multiplesOf3and5(n::Int)
    currSum = 0
    for x = 1:n-1
        if x % 3 == 0 || x % 5 == 0
            currSum += x
        end
    end
    return currSum
end

println(multiplesOf3and5(1000))
