class Manager
attr_accessor :name, :department, :age
@@all = []

def initialize(name, department, age)
@name = name 
@department = department
@age = age 
@@all << self
end

def self.all 
@@all
end 

def employees
Employee.all.select do |employee|
    employee.manager == self 
end 
end 
def hire_employee(name, salary)
   new_employee = Employee.new(name, salary)
   new_employee.manager = self 
end 

def self.all_departments
@@all.map do |manager|
    manager.department
end
end

def self.average_age
    total_age = 0 
    @@all.each do |manager|
      total_age += manager.age
end 
return total_age/@@all.length
end 
end 

