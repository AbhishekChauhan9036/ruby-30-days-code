# Enter your code here. Read input from STDIN. Print output to STDOUT
T = gets.to_i

for i in (1..T) do
    s = gets.chomp.split("")
    even = Array.new
    odd = Array.new
    s.to_a.each_with_index do |x, j|
        even << x if j % 2 === 0
        odd << x if j % 2 === 1
    end
    puts "#{even.join} #{odd.join}" 
end