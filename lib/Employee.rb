class Employee

    attr_reader :name

    attr_accessor :manager, :salary

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        self.class.all << self
    end

    def self.all
        @@all
    end 

    def manager_name
        @manager.name
    end 

    def tax_bracket
        employees = Employee.all.select do |employee|
            (employee.salary - self.salary).abs < 1000
        end 
        employees.delete(self)
        employees
    end 

    def self.paid_over(num)
        self.all.select do |employee|
            employee.salary > num
        end
    end 

    def self.find_by_department(department)
        self.all.find do |employee|
            employee.manager.department == department
        end 
    end

end
