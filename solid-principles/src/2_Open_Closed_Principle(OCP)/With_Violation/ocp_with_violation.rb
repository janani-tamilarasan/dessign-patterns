
# ################### WITH VIOLATION ###################
# OPEN AND CLOSED PRINCIPLE(OCP)
#    Open for extension nd closed for modification. ie)it allow to add functionality without
#    altering the existing code

# The above one voilates OCP principle

# NOTE: If client want to add functionality such add triangle we had to touch the exsiting code.
# It is voilates the OCP


class ShapeCalculator

	def calculate_area(shape, radius,length, breadth)
		if(shape == 'circle')
			return Math::PI * radius * radius
		elsif(shape == 'rectangle') 
			return length * breadth
		else
			raise NotImplementedError 'No Shape Found'
	end
end


shape = ShapeCalculator.new
p shape.calculate_area('circle',2,0,0)