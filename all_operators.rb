

puts "All Arithmetic Operators"
a = 10
b = 3
puts "a + b = #{a + b}"
puts "a - b = #{a - b}"
puts "a * b = #{a * b}"
puts "a / b = #{a / b.to_f}" 
puts "a % b = #{a % b}"
puts "a ** b = #{a ** b}"

puts "Comparison Operators"
puts "a == b: #{a == b}"
puts "a != b: #{a != b}"
puts "a > b: #{a > b}"
puts "a < b: #{a < b}"
puts "a >= b: #{a >= b}"
puts "a <= b: #{a <= b}"

puts "Logical Operators"
x = true
y = false
puts "x && y: #{x && y}"
puts "x || y: #{x || y}"
puts "!x: #{!x}"

puts "Assignment Operators"
num = 5
puts "num = #{num}"
num += 2
puts "num += 2 → #{num}"
num -= 1
puts "num -= 1 → #{num}"
num *= 3
puts "num *= 3 → #{num}"
num /= 2
puts "num /= 2 → #{num}"
num %= 3
puts "num %= 3 → #{num}"
puts "Unary Operator"
z = -10
puts "-z = #{-z}"
puts "+z = #{+z}"

puts "Ternary Operator"
age = 20
puts age >= 18 ? "Adult" : "Minor"

puts "Range and Membership"
range = 1..10
puts "Does 5 lie in 1..10? #{range.include?(5)}"
puts "Range elements:"
range.each { |i| print "#{i} " }
