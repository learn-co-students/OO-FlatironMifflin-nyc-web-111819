require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

manager1 = Manager.new("Anna", "Science", 19)
manager2 = Manager.new("Dean", "Science", 30)
manager3 = Manager.new("Lauri", "Teaching", 51)
employee2 = Employee.new("Sarah", 38000, manager2)
manager1.hire_employee("Julia", 30000)
manager2.hire_employee("Hayden", 30500)
manager2.hire_employee("David", 29500)
employee1 = Employee.new("Ethan", 28900, manager1)

#still not able to access the employees added through hire_employee method

binding.pry