require( 'pry-byebug' )

require_relative('../models/student')
require_relative('../models/house')


house1 = House.new('house_name' => "Gryffindor", 'logo_url' => "nil")
house2 = House.new('house_name' => "Ravenclaw", 'logo_url' => "nil")
house3 = House.new('house_name' => "Hufflepuff", 'logo_url' => "nil")
house4 = House.new('house_name' => "Slytherin", 'logo_url' => "nil")

house1.save
house2.save
house3.save
house4.save

student1 = Student.new('first_name' => "Harry", 'surname' => "Potter", 'house_id' => 1, 'age' => 12)
student2 = Student.new('first_name' => "Ron", 'surname' => "Weasley", 'house_id' => 1, 'age' => 12)
student3 = Student.new('first_name' => "Hermione", 'surname' => "Granger", 'house_id' => 1, 'age' => 12)
student4 = Student.new('first_name' => "Draco", 'surname' => "Malfoy", 'house_id' => 4, 'age' => 17)

student1.save
student2.save
student3.save
student4.save


binding.pry
nil



