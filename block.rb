def greet
puts "hello from the method"
if block_given?
yield

else
puts"No block given"
end
end

greet {puts"namaste from the block"}


