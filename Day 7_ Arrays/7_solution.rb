#!/bin/ruby

require 'json'
require 'stringio'



n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

puts arr.reverse.join(' ')