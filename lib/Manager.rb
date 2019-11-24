class Manager
	attr_accessor :name, :department
	attr_reader :age

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
    Employee.new(name, salary, self)
  end

  def self.all_departments
    self.all.map do |manager|
      manager.department 
    end
  end

  def self.average_age
    total = 0.0
    self.all.each do |manager|
      total += manager.age 
    end
    total / self.all.length
  end
end
