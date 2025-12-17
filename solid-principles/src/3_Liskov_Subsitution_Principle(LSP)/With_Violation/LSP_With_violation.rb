
# ################### WITH VIOLATION ###################

# LISKOV SUBSITUTION PRINCIPLE(LSP)
#  The object of super classes can be reaplaced with obects of subclasses, without 
#  affecting the correctness of program.


# The above one voilates LSP principle
 # -> Sparrow and Penguin inherits the behavior of Bird
 # where Sparrow can make sound and can fly
 # But Penguin can make sound and can't fly.in this case it will inherit the behavior of bird and thrwo error.this is worng
 

class Bird
	def fly
	  raise NotImplementedError, "Subclasses must implement area"
	end

	def make_sound
	  raise NotImplementedError, "Subclasses must implement area"
	end
end

class Sparrow < Bird

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
p penguin.fly # will throw the NotImplemented error