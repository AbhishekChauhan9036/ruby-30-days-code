#!/bin/ruby

require 'json'
require 'stringio'



arr = Array.new(6)
max_hourglass_sum = -63

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

6.times do |i|
    6.times do |j|
        if (i + 2) < 6 && (j + 2) < 6
            current_hourglass_sum = (arr[i][j] + arr[i][j + 1] + arr[i][j + 2]) +
            (arr[i + 1][j + 1]) + (arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2])
            if current_hourglass_sum  > max_hourglass_sum
                max_hourglass_sum = current_hourglass_sum
            end
        end
    end
end    
p max_hourglass_sum