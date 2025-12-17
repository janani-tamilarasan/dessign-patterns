# // Factory Patter

# //Flow
# Client want to ordder food, Without Factory pattern. client can directly gt Food.
# It is bad => client should be exposed to Food and it leads to bad customer experience
# # Client(FoodApp)
# # |
# #    Food
# #       |
# #         BURGER | PIZZA

#Define a Common Interface/module/class
class Food
	def prepare
		raise NotImplementationError 'Not Implemented'
	end
end

# create Concrete Implementation 1
class Pizza < Food
	def prepare
		'preparing Pizza .....'
	end
end

# create Concrete Implementation 2
class Burger < Food
	def prepare
		'preparing Burger .....'
	end
end

# client
class FoodApp

	def get_food(food_name)
		if(food_name == 'pizza')
			food = Pizza.new
		elsif(food_name == 'Burger')
			food = Burger.new
		else
			raise NotImplementationError 'Not Found'
		end

        food.prepare
	end
end


client = FoodApp.new
p client.get_food('pizza')
p client.get_food('Burger')

# NOTE
# IT violets OCP PRinciple
# client has expose all concreimplemation

