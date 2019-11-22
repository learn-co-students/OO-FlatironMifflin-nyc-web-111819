class Manager
    attr_accessor :name, :department, :age

    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age 

        @@all << self
    end

    def employees
        # returns all the employees under this manager
        Employee.all.select {|employees| employees.manager == self}
    end

    def self.all
        #returns all managers
        @@all
    end

    def hire_employee(employee_name, salary)
        #takes a name and salary to add to list of employees a manager manages
        Employee.new(employee_name, salary)
        
    end

    def self.all_departments
        #returns all the departments that are managed
        self.all.map {|managers| managers.department}
    end

    def self.average_age
        #average age of all managers
        total_age = self.all.map {|managers| managers.age}
        total_age.inject(:+).to_f / total_age.length.to_f 
    end



end
