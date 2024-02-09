#problem 4 part one
#function C(n,k) below is a procedure in julia that uses equation seven to produce the binomial coefficient
#including zeros!

function C(n,k)
    if k == 0 || k == n #if k is zero or if k and n are the same the coeff is one
        return 1
    elseif 1 <= k < n
        return C(n-1, k-1) + C(n-1, k) #uses a recursive additive formula
    else
        return 0
    end
end 


#test with n=8 k =4, should get 70
C(8,4)


#problem 4 part 2
#function pascal_row which prints the nth row of pascal's triangle

function pascal_row(n)
    row = [C(n,k) for k in 0:n]
    return row
end
