require "soap/rpc/standalone"

class Myserver < SOAP::RPC::Standaloneserver

def initialize
super("simpleServer","urn:ruby:simple","localhost","8080")
add_method(self,add,"a","b")
end

def add(a,b)
  a+b
end
end

server=Myserver.new
trap('INT') { server.shutdown }
server.start
