
# ################### WITHOT VIOLATION ###################

# LISKOV SUBSITUTION PRINCIPLE(LSP)
#  The object of super classes can be reaplaced with obects of subclasses, without 
#  affecting the correctness of program.

# The above one follows LSP principle
  # For Bird calss we  can put the comon thingks like make_sound
  # For FlyingBird module -> i put for fly
  # we can inculde it is only required,
  # Hence inheritence of super class remain same, FlyingBird can be replaced/add to subclasses only tits requried

class Bird
	def make_sound
	  raise NotImplementedError, "Subclasses must implement area"
	end
end

module FlyingBird 
	def fly
	  raise NotImplementedError, "Subclasses must implement area"
	end
end

class Sparrow < Bird
	include FlyingBird

	def fly
		'Sparrow is flying'
	end

	def make_sound
		'Sparrow is making sound'
	end
end

# no tha penguin can't fly
class Penguin < Bird

	def make_sound
		'Sparrow is making sound'
	end
end

sparrow = Sparrow.new
p sparrow.fly

penguin = Penguin.new
p penguin.fly # will not throw the NotImplemented error and it shows undefend method 