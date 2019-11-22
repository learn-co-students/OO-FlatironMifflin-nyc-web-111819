class Employee

  attr_reader :name, :salary, :manager
  
  @@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    self.class.all << self
  end

  def manager_name
    manager.name
  end

  def self.all
    @@all
  end

  def self.paid_over(threshold)
    self.all.select do |employee|
      employee.salary > threshold
    end
  end

  def self.find_by_department(department)
    self.all.find do |employee|
      employee.manager.department == department
    end
  end

  def tax_bracket
    # returns an Array of all the employees whose salaries are within $1000 (± 1000) of the employee who invoked the method
    self.class.all.select do |employee|
      (employee.salary - self.salary) <= 1000 && (employee.salary - self.salary) >= -1000
    end
  end


end
