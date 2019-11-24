class Employee
attr_accessor :name, :salary, :manager
@@all = []
def initialize(name, salary)
    @name = name 
    @salary = salary 
    @@all << self 
end

def self.all 
    @@all 
end 

def self.paid_over(num)
@@all.select do |employee|
    employee.salary > num 
end 
end 

def self.find_by_department(dpt)
    @@all.find do |employee|
        employee.manager.department == dpt 
    end 
end  

def tax_bracket 
    tax_brack = []
    @@all.each do |employee|
      if (employee.salary - self.salary < 1000 && employee.salary - self.salary > 0) || (self.salary - employee.salary < 1000 && self.salary - employee.salary > 0)
      tax_brack  << employee
    end 
end 
return tax_brack
end 
end 
