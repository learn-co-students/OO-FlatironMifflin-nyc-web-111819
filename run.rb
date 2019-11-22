require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

manager1 = Manager.new("Gaby", "Accounting", 26)
manager2 = Manager.new("Jessie", "Design", 29)
manager3 = Manager.new("Elisa", "IT", 31)

employee1 = Employee.new("Terese", 1000, manager3)
employee2 = Employee.new("Janice", 2000, manager2)
employee3 = Employee.new("Chris", 1300, manager2)
employee4 = Employee.new("Judy", 5000, manager1)
employee5 = Employee.new("Julie", 7000, manager3)




binding.pry
puts "done"
