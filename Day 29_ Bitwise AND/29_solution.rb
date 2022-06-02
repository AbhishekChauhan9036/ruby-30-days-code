t = gets.strip.to_i
for i in (0..t-1)
    n,k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i
    
    if ((k-1) | k) <= n
        puts (k-1)
    else
        puts (k-2)
    end
end