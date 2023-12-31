#=
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting 1 and 2 the first 10 terms will be:
  1, 2, 3, 5, 8, 13, 21, 34, 55, 89,... 
By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
=#

function evenFibo()
    sum, prev, curr = 0, 1, 2

    while curr <= 4e6
        #if curr % 2 == 0
        #    sum += curr
        #end

        # we are relieng on the fact that every third Fibonacci number is even.

        sum += curr


        next_sum = prev + 2 * curr
        prev, curr = next_sum, curr
    end
    return sum
end

println(evenFibo())
