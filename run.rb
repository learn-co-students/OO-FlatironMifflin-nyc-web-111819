require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new("Dumbledore", "Headmaster", 116)
manager2 = Manager.new("Mcgonagall", "Transfiguration", 62)
manager3 = Manager.new("Flitwick", "Charms", 62)
manager4 = Manager.new("Snape", "Potions", 38)

employee1 = Employee.new("Harry", 40000, manager1)
employee2 = Employee.new("Hermoine", 25000, manager2)
employee3 = Employee.new("Ron", 23500, manager1)
employee4 = Employee.new("Neville", 24000, manager4)

binding.pry
puts "done"
