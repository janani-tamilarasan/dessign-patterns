
# ################### WITH VIOLATION ###################

# INTERFACE SEGREGATION PRINCIPLE(ISP)
#  Clients should not forced depend on interface that they don't use. It encourages smaller and more specific interfaces.

# The above one voilates ISP principle

# In this example interface worker has work eat ,
# when you add interface to human and robot . Bot can eat and work. But
# Robot can't eat and they don use . it will cause errors

module Worker
	def work
		raise NotImplementedError, "No Implementaion"
	end

	def eat
		raise NotImplementedError, "No Implementaion"
	end
end

class Human
	include Worker

	def work
		'Human can work'
	end

	def eat
		'Human can eat'
	end
end

class Robot
	include Worker

	def work
		'Robot can work'
	end

	def eat
		raise "Robot can't eat"
	end
end

human = Human.new
p human.eat
robot = Robot.new
p robot.eat # it cause error