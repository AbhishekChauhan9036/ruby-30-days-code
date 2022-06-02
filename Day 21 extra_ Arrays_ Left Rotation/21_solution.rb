#!/bin/ruby

require 'json'
require 'stringio'

# Complete the rotLeft function below.
def rotLeft(a, d)
a.rotate(d)

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nd = gets.rstrip.split

n = nd[0].to_i

d = nd[1].to_i

a = gets.rstrip.split(' ').map(&:to_i)

result = rotLeft a, d

fptr.write result.join " "
fptr.write "\n"

fptr.close()
