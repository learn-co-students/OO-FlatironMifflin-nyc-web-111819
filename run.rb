require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

man1 = Manager.new("michael", "paper", 39)
man2 = Manager.new("tony", "software engineering", 28)

emp1 = Employee.new("dwight", 85000.00, man1)
emp2 = Employee.new("jim", 86000.00, man1)
emp3 = Employee.new("pam", 90000.00, man1)
emp4 = Employee.new("angela", 79000, man2)
emp5 = Employee.new("stanley", 82000, man2)





binding.pry
puts "done"
