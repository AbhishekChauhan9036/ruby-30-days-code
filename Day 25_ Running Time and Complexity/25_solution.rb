# Enter your code here. Read input from STDIN. Print output to STDOUT

# get the input of the number of test cases. store in T variable
T = gets.strip.to_i
# get input of n of T and store in array
array = Array.new
T.times do
    n = gets.chomp.to_i
    array << n
end
# check if n is prime
def is_prime?(n)
    if n <=1
        return false
    elsif n == 2
        return true
    elsif n.to_i != n
        return false
    end
# set the upperlimit of the range to be the squareroot of n to optimize the running time
    for i in 2..Math.sqrt(n) do
        if n % i == 0 
            return false
        end
    end 
    return true
end
# print the results if each n in the array is prime or not
input = 0
while input < array.size
    puts is_prime?(array[input]) ? 'Prime' : 'Not prime'
    input += 1
end