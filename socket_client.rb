require 'socket'

client = TCPSocket.new('localhost', 2000)
puts "Connected to server!"

server_message = client.gets.chomp
puts "Server says: #{server_message}"

client.puts "Hello Server! Thank you."

client.close
