require( 'pry-byebug' )

require_relative('../models/student')



student1 = Student.new('first_name' => "Harry", 'surname' => "Potter", 'house' => "Griffindor", 'age' => 12)
student2 = Student.new('first_name' => "Ron", 'surname' => "Weasley", 'house' => "Griffindor", 'age' => 12)
student3 = Student.new('first_name' => "Hermione", 'surname' => "Granger", 'house' => "Griffindor", 'age' => 12)
student4 = Student.new('first_name' => "Draco", 'surname' => "Malfoy", 'house' => "Slytherin", 'age' => 17)

student1.save
student2.save
student3.save
student4.save


binding.pry
nil



