
# ################### WITHOUT VIOLATION ###################
# # Single Responsibilty Principle(SRP)
#   - Each class should have only one reason to change ie)Each cls should have only one responsibility.

	# “This design follows SRP because:
	# Employee handles data
	# Calculation handles business logic
	# Report handles presentation
	# Each class has only one reason to change.”

############ SRP WITHOUT VIOLATION ##############

class Employee
	attr_reader :name, :salary

	def initialize(name,salary)
		@name = name
		@salary = salary
	end
end

class SalaryCalculator

    attr_reader  :employee

	def initialize(employee)
		@employee = employee
	end

	def get_salary
		employee.salary * 1.2
	end
end

class EmployeeReport
	attr_reader  :employee

	def initialize(employee)
		@employee = employee
	end

	def generate
		"Generated Report Successfully for #{employee.name}"
	end
end

employee = Employee.new('John',25)
calculator = SalaryCalculator.new(employee)
p calculator.get_salary
report = EmployeeReport.new(employee)
p report.generate