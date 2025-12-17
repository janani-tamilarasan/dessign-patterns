
# ################### WITH VIOLATION ###################
# # Single Responsibilty Principle(SRP)
#   - Each class should have only one reason to change ie)Each cls should have only one responsibility.

# The above one voilates SRP principle
# Employee class should have one responsiblibity such as employee info
# curenttely employee hold multiple responsibilites such calculate_salary and genearate_report

class Employee
	attr_accessor :name, :salary

	def initialize(name,salary)
		@name = name
		@salary = salary
	end

	def calculate_salary
        salary * 1.2
	end

	def generate_report
		"Generated Report Successfully for #{name}"
	end
end

employee = Employee.new('John',25)
p employee.calculate_salary
p employee.generate_report