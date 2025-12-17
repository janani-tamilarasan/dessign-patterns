# // Factory Patter

# //Flow
# Client want to ordder food, he can directly call to FoodFactory and foofactory take care of all concrete implemenation.
# It will not expose implementaion to client
# # # Client(FoodApp)
# # # |
# # #    FoodFactory
# # #       |
# # #         FOOD
#                |
#                 BurgerFactory | PizzaFactory
                   # | Burger         | Pizza

### STEP 1
#Define a Common Interface/module/class
module Food
	def prepare
		raise NotImplementedError 'Not Implemented'
	end
end

# Concrete Implementaions of FOOD
class Pizza
	include Food

	def prepare
		'preparing Pizza .....'
	end
end

class Burger
	include Food

	def prepare
		'preparing Burger .....'
	end
end

### STEP 2
# Create the Factory
class FoodFactory
	 def create_food
	 	raise NotImplementationError 'No Implemetation'
	 end
end

class PizzaFactory < FoodFactory
	 def create_food
	 	Pizza.new
	 end
end

class BurgerFactory < FoodFactory
	 def create_food
	 	Burger.new
	 end
end

### Client Implmenataion
food_factory = PizzaFactory.new
food  = food_factory.create_food
p food.prepare

food_factory = BurgerFactory.new
food  = food_factory.create_food
p food.prepare

