puts "Enter your text:"
text = gets.chomp

# Number check
if text =~ /^\d+$/
  puts "Ye sirf numbers hain"
end

# Capital letter se start check
if text =~ /^[A-Z]/
  puts "Ye capital se shuru hota hai"
end

# Email check
if text =~ /\A[\w+\-.]+@[a-z\d\-]+\.[a-z]+\z/i
  puts "Valid email hai"
end

# Check if word ends with 'ing'
if text =~ /ing$/
  puts "Ye 'ing' se end hota hai"
end
