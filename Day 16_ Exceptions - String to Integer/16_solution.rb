#!/bin/ruby

S = gets.strip

begin
    puts Integer(S)
rescue
    puts 'Bad String'
end
