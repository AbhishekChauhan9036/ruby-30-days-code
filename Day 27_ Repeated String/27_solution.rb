#!/bin/ruby

require 'json'
require 'stringio'

# Complete the repeatedString function below.
def repeated_string(s, n)
  s.count('a') * n.div(s.size) + s.slice(0, n.remainder(s.size)).count('a')
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

s = gets.to_s.rstrip

n = gets.to_i

result = repeatedString s, n

fptr.write result
fptr.write "\n"

fptr.close()
