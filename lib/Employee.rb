class Employee

    attr_accessor :name, :salary, :manager_name

    @@all = []
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name   

        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(salary)
        @@all.select do |employee|
            employee.salary > salary
        end
    end

    def self.find_by_department(department)
        @@all.find do |employee|
            employee.manager_name.department == department
        end
    end

    def tax_bracket
        new_array = @@all.select do |employee|
            (employee.salary - self.salary).abs < 1000
        end
        new_array.map do |employee|
            employee.name
        end
    end
    
end
