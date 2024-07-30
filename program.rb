require './lib/converter.rb'

puts "Hi! I convert base-10 numbers to other base systems."
puts "What base would you like to convert to?"
input_base = gets.chomp.to_i

puts
puts "Great. What number would you like to convert in this base?"
input_decimal = gets.chomp.to_i

converter = Converter.new
answer = converter.base_number input_decimal,input_base

puts
puts "The base-10 number " + input_decimal.to_s + " is equal to the base-" + input_base.to_s + " number " + answer + "!"
puts "Yayy"