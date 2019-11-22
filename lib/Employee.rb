class Employee
    attr_accessor :name, :salary, :manager_name, :department
    @@all = []
    def initialize(name, salary)
        @name = name
        @salary = salary
    end
    def self.all
        @@all
    end
    def self.paid_over(salary)
        @@all.select{|employee| employee.salary > salary}
    end
    def self.find_by_department(department)
        @@all.select{|employee| employee.department == department}
    end
    def tax_bracket
        @@all.select{|employee| ((self.salary - employee.salary).abs < 1000) && employee.name != self.name}
    end
end
