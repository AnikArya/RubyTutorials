class Students
 @@total_students=0

def initialize(name,course)
@name=name
@course=course
@@total_students+=1
end

def show_student_details
puts"name of the stuent is #{@name}"
puts"#{@name} is enrolled in #{@couse}"
end

def change_course(new_course)
@course=new_course
puts"the updated course is now #{@course}"
end

def self.total_students
@@total_students
end
end

m1=Students.new("Anik","python")
m2=Students.new("ramesh","ruby")

puts"student 1 info"
m1.show_student_details
puts"student 2 info"
m2.show_student_details
puts"student 2 update course"
m2.change_course("c++")
puts"the total enrolled students is #{Students.total_students}"

