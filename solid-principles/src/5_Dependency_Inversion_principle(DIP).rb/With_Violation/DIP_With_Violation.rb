# ################### WITH VIOLATION ###################

# DEPEDENCY INVERSION PRINCIPLE(DIP)
#  High level module should not depends on low level module . Bu it depends on abstraction not concreate implemenation.

# # The above one voilates DIP principle
# In this examle Computer class is tightly connected with WiredKeyboard it is wrong.
# In future clien t want to move to WirelessKeyboard, this will not works, IT dosmn't depends on low module
# We can simply give client to choose whater we want without knowing implementaion.

class WiredKeyboard
	def connect
		' Wired Keyboard connected succesfully'
	end
end

class Computer
    def initialize
    	@wired_keyboard = WiredKeyboard.new
    end

	def start
		@wired_keyboard.connect()
	end
end


computer = Computer.new
p computer.start