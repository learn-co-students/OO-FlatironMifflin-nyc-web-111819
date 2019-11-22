class Manager

  attr_accessor :name, :department, :age

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

  def hire_employee(name, salary)
    #takes a String argument and a Fixnum argument of an employee's name and the employee's salary, respectively, and adds that employee to the list of employees that the manager oversees
    Employee.new(name, salary, self)
  end

  def self.all_departments
    # returns an Array of all the department names that every manager oversees
    self.all.map do |manager|
      manager.department
    end
  end

  def self.average_age
    age_array = self.all.map do |manager|
      manager.age
    end
    age_array.sum.to_f/age_array.length
  end

end
