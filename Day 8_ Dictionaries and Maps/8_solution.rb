# Enter your code here. Read input from STDIN. Print output to STDOUT

hashMap = {}
n = gets.chomp.to_i

for x in (0...n)
  arr = gets.chomp.split(" ")
  hashMap[arr[0]] = arr[1]
end

while true
  phone_book = gets
  break unless phone_book
  name = phone_book.chomp
  if hashMap.key?(name)
    puts "#{name}=#{hashMap[name]}"
  else
    puts "Not found"
  end
end