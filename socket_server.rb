require 'socket'

server = TCPServer.new('localhost', 2000)
puts "Server started at port 2000. Waiting for client..."

client = server.accept

client.puts "Hello from server! Aapka swagat hai."

message = client.gets.chomp
puts "Client says: #{message}"

client.close
server.close
