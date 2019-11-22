class Employee
    attr_accessor :name, :salary, :manager

    @@all = []
    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager

        @@all << self
    end

    def manager_name
        #returns their manager's name
        @manager.name
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        # takes a Fixnum argument and returns an Array of all the employees whose salaries are over that amount
        all.select {|employees| employees.salary > amount}
    end

    def self.find_by_department(department)
        # takes a String argument that is the name of a department and 
        # returns the first employee whose manager is working in that department
        all.select {|employees| employees.manager.department == department}

    end

    def tax_bracket
        # returns an Array of all the employees whose salaries are within $1000 (± 1000) 
        # of the employee who invoked the method
        @@all.select {|employees| (((self.salary - 1000.00 )..(self.salary + 1000))).include?(employees.salary)}
    end

end
