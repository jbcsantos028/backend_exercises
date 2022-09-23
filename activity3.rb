class Student
  attr_accessor :name, :student_no, :num_of_units
  
  def initialize(name, student_no, num_of_units)
    @name = name
    @student_no = student_no
    @num_of_units = num_of_units
    @enrollment = false
  end

  def set_enrollment
    @enrollment = true
    puts "#{@name} has enrolled.\nEnrollment Status: #{@enrollment}"
  end

  def add_units(num_of_units_to_add)
    @num_of_units = num_of_units + num_of_units_to_add
    puts "#{@name}'s new no. of units is #{@num_of_units}."
  end
end

first_student = Student.new("Joseph Santos", "2022143143", 15)
second_student = Student.new("Miguel Santos", "2022123123", 12)
third_student = Student.new("Jas Santos", "2022111111", 18)

first_student.set_enrollment
first_student.add_units(5)