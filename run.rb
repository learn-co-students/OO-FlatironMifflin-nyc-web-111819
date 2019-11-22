require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new("James", "Finance", 37)
manager2 = Manager.new("Ilana", "Program", 34)
manager3 = Manager.new("Rachel", "Legal", 28)

employee1 = Employee.new("Tanya", 65000, manager1)
employee2 = Employee.new("Ethan", 54000, manager1)
employee3 = Employee.new("Jessica", 53000, manager2)
employee4 = Employee.new("Keren", 53000, manager2)
employee5 = Employee.new("Michelle", 53500, manager2)
employee6 = Employee.new("AJ", 65500, manager3)
employee7 = Employee.new("BJ", 55000, manager3)


binding.pry
puts "done"
