require( 'pg') 
require_relative("../db/sql_runner")




class Student

  attr_reader :id
  attr_accessor :first_name, :surname, :house, :age

# teststudent = Student.new('first_name' => "Harry", 'surname' => "Potter", 'house' => "Griffindor", 'age' => 12)

def initialize(options)
  @id = options['id'].to_i if options['id'] != nil
  @first_name = options['first_name']
  @surname = options['surname']
  @house = options['house']
  @age = options['age'].to_i

end

def save()
  sql = "INSERT INTO students (first_name, surname, house, age) VALUES ('#{@first_name}', '#{@surname}', '#{house}', #{@age}) RETURNING *;"
  student = SqlRunner.run( sql ).first
  @id = student['id'].to_i
end

def self.all

  sql = "SELECT * FROM students;"
  students = SqlRunner.run(sql)
  return students.map { |student| Student.new(student)}
end


def self.find(id)
  sql = "SELECT * FROM students WHERE id=#{id.to_i};"
  student = SqlRunner.run(sql)
  result = Student.new( student.first)
  return result
end





end