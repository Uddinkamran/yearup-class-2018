require 'faker'
require './student'
require './classroom'
require './grade'

# Our four classrooms for the first years
@A = Classroom.new("1A")
@B = Classroom.new("1B")
@C = Classroom.new("1C")
@D = Classroom.new("1D")

def genStudent
  s = Student.new(Faker::Name::name, rand(11..20))
  s.reportcard.addGrade(Grade.new("math", rand(0..100)))
  s.reportcard.addGrade(Grade.new("history", rand(0..100)))
  s.reportcard.addGrade(Grade.new("english", rand(0..100)))
  s.reportcard.addGrade(Grade.new("science", rand(0..100)))
  s
end

# Generate our students
1..25.times do |i|
  @A.addStudent(genStudent())
end
1..25.times do |i|
  @B.addStudent(genStudent())
end
1..25.times do |i|
  @C.addStudent(genStudent())
end
1..25.times do |i|
  @D.addStudent(genStudent())
end

# Check the rosters
@A.roster
puts ""
@B.roster
puts ""
@C.roster
puts ""
@D.roster
puts ""


############################################################
# CHALLENGE 1

def findFailing(classroom)
  classroom.students.each { |key,student|
    total = 0

    student.reportcard.grades.each do |key, grade|
      # puts grade.inspect
      total = total + grade.score
    end

    # puts total
    # puts student.inspect
    if total > 200
      puts key + " PASS"
    elsif total < 200
      puts student.name + " FAIL! DO BETTER!"
    end
    }
end

findFailing @C

############################################################
# CHALLENGE 2
def findExceptional(classroom)
  classroom.students.each { |key,student|
    total = 0

    student.reportcard.grades.each do |key, grade|
      # puts grade.inspect
      total = total + grade.score
    end

    # puts total
    # puts student.inspect
    if total > 260
      puts student.name + " was exceptional!"
    end
    }
end

findExceptional @B

############################################################