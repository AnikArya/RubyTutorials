puts "Enter your name:"
name = gets.chomp

puts "Enter your age:"
age = gets.chomp.to_i

puts "Enter your marks out of 100:"
marks = gets.chomp.to_i
if age >= 18
  puts "#{name}, you are eligible to vote."
end
if marks >= 40
  puts "Result: Pass"
else
  puts "Result: Fail"
end
if marks >= 90
  puts "Grade: A"
elsif marks >= 70
  puts "Grade: B"
elsif marks >= 50
  puts "Grade: C"
else
  puts "Grade: D"
end
is_holiday = false
unless is_holiday
  puts "You have to attend class today."
end

# 5. TERNARY
status = age >= 18 ? "Adult" : "Minor"
puts "Ternary Check: You are an #{status}."

# 6. CASE
puts "Enter today’s day (e.g. Monday):"
day = gets.chomp.capitalize

case day
when "Monday"
  puts "Start your week with energy!"
when "Saturday", "Sunday"
  puts "Enjoy your weekend!"
else
  puts "Keep working hard!"
end
