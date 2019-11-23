require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


manager1 = Manager.new("Michael", "Operations", 40)
manager2 = Manager.new("Richard", "Finance", 37)
manager3 = Manager.new("Timothy", "R&D", 39)

employee1 = Employee.new("Jenna", 55000, manager2)
employee2 = Employee.new("John", 75000, manager1)
employee3 = Employee.new("Roberta", 70000, manager3)
employee4 = Employee.new("Martha", 75000, manager1)
employee5 = Employee.new("Ellis", 85000, manager3)
employee6 = Employee.new("Jade", 72000, manager3)
employee7 = Employee.new("Marion", 75500, manager2)
employee8 = Employee.new("Bob", 74700, manager1)


binding.pry
puts "done"
