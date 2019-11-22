require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here



manager1 = Manager.new("zoe", "poop", 1)
manager2 = Manager.new("yoo", "smile", 2)
manager3 = Manager.new("viv", "cry", 3)





employee1 = Employee.new("abel", 1, manager1)
employee2 = Employee.new("bob", 2, manager2)
employee3 = Employee.new("cat", 3, manager3)
employee4 = Employee.new("dave", 4, manager1)



binding.pry
puts "done"
