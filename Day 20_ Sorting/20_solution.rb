#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)
# Write Your Code Here
swaps = 0
n.times do
    sorted = true
    for i in 0..n-2
        (a[i], a[i+1] = a[i+1], a[i]) and
        swaps +=1 and
        sorted = false if a[i] > a[i+1] 
    end
    break if sorted
end
  puts "Array is sorted in #{swaps} swaps."
  puts "First Element: #{a[0]}"
  puts "Last Element: #{a[-1]}"


