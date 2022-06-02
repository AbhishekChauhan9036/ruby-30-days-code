#!/bin/ruby

require 'json'
require 'stringio'

# Complete the solve function below.
def solve(meal_cost, tip_percent, tax_percent)
tip = meal_cost * tip_percent/100
tax = meal_cost * tax_percent/100 
total_cost = meal_cost + tip + tax
puts total_cost.round()


end

meal_cost = gets.to_f

tip_percent = gets.to_i

tax_percent = gets.to_i

solve meal_cost, tip_percent, tax_percent
