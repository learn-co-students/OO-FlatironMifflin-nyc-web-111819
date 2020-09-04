require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

michael = Manager.new("Michael","Sales",42)
michael.hire_employee("Jim",42000)
michael.hire_employee("Dwight",40000)

binding.pry
puts "done"
