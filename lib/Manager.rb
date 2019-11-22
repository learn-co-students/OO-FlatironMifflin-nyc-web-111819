class Manager

    attr_reader :name, :department, :age

    @@all = []
    @employees = []
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
            employee.manager_name == self 
    
        end
    end

    def hire_employees(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        @@all.map do |manager|
            manager.department
        end
    end

    def self.average_age
        new_array = @@all.map do |manager|
            manager.age
        end
            (new_array.sum / new_array.length).to_f

    end
end
