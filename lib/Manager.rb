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
        Employee.all.select {|e| e.manager_name == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_departments
        @@all.map {|m| m.department}
    end

    def self.average_age
        new_array = @@all.map {|m| m.age}
        new_array.sum.to_f / new_array.length
    end

end
