require "sqlite3"

db = SQLite3::Database.new "anik_data.db"

db.execute <<-SQL
CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER
  );
SQL
students = db.execute("SELECT * FROM students")

students.each do |student|
  id = student[0]
  name = student[1]
  age = student[2]

  puts "ID: #{id}, Name: #{name}, Age: #{age}"
end

