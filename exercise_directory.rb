def print_header
  puts "The students of Villains Academy"
  puts "------------"
end

def print(students)
  students.each.with_index(1) do |student, index| #.each.with_index iterates over array and assigns each element to an index beginning with 1. hence .with_index(1)
    if student[:name].start_with?("T") # only prints student name that start with 'T'
      puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)" 
    end
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array 
  students = []
  #gets the first name
  name = gets.chomp
  #while the name is not empty, repeat this code 
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    end
  #return the arry of students
  students
end

students = input_students
print_header
print(students)
print_footer(students)

# students = [
#   ["Dr. Hannibal Lecter", :november],
#   ["Darth Vader", :november],
#   ["Nurse Ratched", :november],
#   ["Michael Corleone", :november],
#   ["Alex DeLarge", :november],
#   ["The Wicked Witch of the West", :november],
#   ["Terminator", :november],
#   ["Freddy Krueger", :november],
#   ["The Joker", :november],
#   ["Joffrey Baratheon", :november],
#   ["Norman Bates", :november]
# ]