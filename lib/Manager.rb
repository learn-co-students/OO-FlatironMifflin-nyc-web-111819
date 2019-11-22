class Manager
    attr_accessor :name, :department, :age, :employees
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
    end
    def self.all
        @@all
    end
    def employees
        Employee.all.select {|employee| employee.manager_name == self.name}
    end
    def hire_employee(employee_name, salary)
        new = Employee.new(employee_name, salary)
        Employee.all << new
        new.department = self.department
        new.manager_name = self.name
    end
    def self.all_departments
        @@all.select{|manager| manager.department}
    end
    def self.average_age
        array = @@all.select{|manager| manager.age}
        array.reduce(:+)/array.length
    end
end