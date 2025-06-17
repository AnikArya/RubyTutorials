require 'net/ldap'

ldap = Net::LDAP.new(
  :host => "ldap.forumsys.com",
  :port => 389,
  :auth => {
    :method => :simple,
    :username => "cn=read-only-admin,dc=example,dc=com",
    :password => "password"
  }
)

if ldap.bind
  puts "✅ Connection successfully done"
else
  puts "❌ Connection failed"
  exit
end

searchbase = "dc=example,dc=com"
filter = Net::LDAP::Filter.eq("uid", "einstein")

results = ldap.search(:base => searchbase, :filter => filter)

if results.any?
  user = results.first
  puts "👤 User Found!"
  puts "📝 Full Name: #{user.cn.first}"
  puts "📧 Email: #{user.mail.first}"
else
  puts "🙁 User not found"
end

