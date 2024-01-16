#homework one problem three julia code

#iterative algorithm for S1
function S1_iter(n)
    S=0;
    for i = 1:n
        S = S+i
    end
    return S
end

#recursive algorithm for S1
function S1_rec(n)
    if n>1
        S = n + S1_rec(n-1)
    else
        S=1
    end
    return S   
end

S1_iter(0)
S1_rec(0)

#julia algorithm for O1, which is a function that adds odd numbers consecutively
#so 1+3+5+7+9+...

function O1_init(n)
    O=0;
    odd_n = 1
    for i = 1:n
        O = O + odd_n
        odd_n += 2
    end
    return O
end

#Here's another way to write function O1 (another way to think about it)
#recursive function for O1(n) which is a function that returns the square of the input number, n

function O1_rec(n)
    O = 1;
    if n>1
        O = n^2
    elseif  n=1
        O = 1
    end
    return O
end

O1_rec(12)

#julia recursive function for S2
#S2 is a function that adds the square of consecutive numbers 
function S2_rec(n)
    if n>1
        S = n^2 + S2_rec(n-1)
    else
        S = 1
    end
    return S
end

S2_rec(0)

