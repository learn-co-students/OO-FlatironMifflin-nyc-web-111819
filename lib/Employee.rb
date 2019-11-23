class Employee
    attr_reader :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
       manager.name
    end
    
    def self.paid_over(num)
        @@all.select {|employee|
        employee.salary > num
        }
    end

    def self.find_by_department(department_name)
        @@all.find {|employee|
        employee.manager.department == department_name
        }
    end

    def tax_bracket
        @@all.select {|employee|
        employee.salary - self.salary <= 1000 &&
        employee.salary - self.salary >= -1000 &&  employee != self
        }
    end

end
