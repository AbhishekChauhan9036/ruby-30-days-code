#!/bin/ruby

require 'json'
require 'stringio'
N = gets.to_i

    if N.odd?
        puts "Weird"
    elsif N.even? && N >= 2 && N <= 5
        puts "Not Weird"
    elsif N.even? &&  N>= 6 && N <= 20
        puts "Weird"
    elsif N.even? && N>= 20
        puts "Not Weird"
    end
