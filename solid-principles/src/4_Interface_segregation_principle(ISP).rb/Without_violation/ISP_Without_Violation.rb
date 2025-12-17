
# ################### WITHOUT VIOLATION ###################

# INTERFACE SEGREGATION PRINCIPLE(ISP)
#  Clients should not forced depend on interface that they don't use. It encourages smaller and more specific interfaces.

# The above one voilates ISP principle
  # create two sperate interfacs Workable and Eatable, and include both only in Human as it requires both
  # For Robot, we can include only Workable, dont include Eatable, we can't froce to add eatable to robot
  # This will solve the problem

module Workable
	def work
		raise NotImplementedError 'No Implementaion'
	end
end

module Eatable
	def eat
		raise NotImplementedError 'No Implementaion'
	end
end


class Human
	include Workable
	include Eatable

	def work
		'Human can work'
	end

	def eat
		'Human can eat'
	end
end


class Robot
	include Workable

	def work
		'Robot can work'
	end
end


human = Human.new
p human.eat
robot = Robot.new
p robot.eat # No method error it is valid