require 'net/smtp'

sender_email = "aanik1480@gmail.com"
app_password = "xurk adzn dejx ihoc"  

receiver_email = "anik.kumar.arya.2003@gmail.com"


subject = "Hello from Ruby!"
message = "Hey Anik,\n\nThis is a test email sent using Ruby. 😊\n\nFrom,\nRuby Lover 💌"

email_content = <<~EMAIL
  From: #{sender_email}
  To: #{receiver_email}
  Subject: #{subject}
  MIME-Version: 1.0
  Content-type: text/plain; charset=UTF-8

  #{message}
EMAIL

Net::SMTP.start('smtp.gmail.com', 587, 'gmail.com',
                sender_email, app_password, :login) do |smtp|
  smtp.enable_starttls
  smtp.send_message email_content, sender_email, receiver_email
end

puts "✅ Email sent successfully!"

