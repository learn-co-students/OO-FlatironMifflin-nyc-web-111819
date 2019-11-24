class Employee
	attr_accessor :name, :salary, :manager
	attr_reader 

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
    self.manager.name 
  end

  def self.paid_over(num)
    self.all.select do |employee|
      employee.salary > num 
    end
  end

  def self.find_by_department(name)
    self.all.find do |employee|
      employee.manager.department == name 
    end
  end

  def tax_bracket
    self.class.all.select do |employee|
      employee.salary.between?((self.salary - 1000), (self.salary + 1000)) && employee != self
    end
  end
end
