class Manager

    attr_reader :name, :department, :age 

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age 
        self.class.all << self 
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
        new_employee = Employee.new(name, salary, self)
    end

    def self.all_departments
        departments = self.all.map do |manager|
            manager.department
        end
        departments.uniq
    end 

    def self.average_age
        total_age = 0.0
        self.all.each do |manager|
            total_age += manager.age
        end 
        total_age / self.all.length
    end 
end