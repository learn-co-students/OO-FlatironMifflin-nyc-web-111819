class Manager
attr_reader :name, :department, :age, :employees

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

    def self.average_age
       manager_age = @@all.map {|manager|
        manager.age
       }
       manager_age.inject(:+) / manager_age.size
    end

    def employees
        Employee.all.select {|employee|
        employee.manager == self
        }
    end

    def hire_employee(name, salary)
        employees << Employee.new(name, salary, self) 
    end


    def self.all_departments
        @@all.map {|manager|
        manager.department
        }
    end

end
