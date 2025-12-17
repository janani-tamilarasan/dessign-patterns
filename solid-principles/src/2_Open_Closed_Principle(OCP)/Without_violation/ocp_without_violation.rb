
# ################### WITHOUT VIOLATION ###################
# OPEN AND CLOSED PRINCIPLE(OCP)
#    Open for extension nd closed for modification. ie)it allow to add functionality without
#    altering the existing code

# NOTE:
  # Each shape has differnt class and area is implemented on individual, if not thorw error.new
  # In future we can easily add or remove class if theny want

class Shape
	def area
	  raise NotImplementedError, "Subclasses must implement area"
	end
end

class Circle < Shape
    attr_accessor :radius

	def initialize(radius)
		@radius = radius
	end

	def area
		Math::PI * radius * radius
	end
end

class Triangle < Shape
    attr_accessor :length, :breadth

	def initialize(length, breadth)
		@length = length
		@breadth = breadth
	end
	
   # Thnrwo not implemente error
	# def area
	# 	length * breadth
	# end
end



circle = Circle.new(2)
p circle.area