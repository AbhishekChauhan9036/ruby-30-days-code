#!/bin/ruby

require 'json'
require 'stringio'

N = gets.strip.to_i
first_names = []
for i in (0..N-1)
  names, emailID = gets.strip.split(' ')
  if emailID =~ /(^[^@]+@gmail)/
    first_names << names
  end
end

puts first_names.sort