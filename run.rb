require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
employee1 = Employee.new("Kevin", 50000)
employee2 = Employee.new("Dwight", 75000)
employee3 = Employee.new("Stanley", 69000)
employee4 = Employee.new("Angela", 35000)
employee5 = Employee.new("Meredith", 35999)
manager1 = Manager.new("Michael", "paper", 36)
manager2 = Manager.new("David", "paper", 50)
manager3 = Manager.new("Jim", "pens", 34)

employee1.manager = manager1
employee2.manager = manager1
employee3.manager = manager2
employee4.manager = manager3

manager2.hire_employee("Ryan", 15000)
binding.pry
puts "done"
