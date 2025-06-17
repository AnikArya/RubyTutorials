puts "main program is starting"
thread1=Thread.new do
3.times do
puts"thread 1 is running"
sleep(1)
end
end
thread2=Thread.new do
3.times do
puts"thread 2 is running"
sleep(1)
end
end
thread1.join
thread2.join 

