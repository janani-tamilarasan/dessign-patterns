# ################### WITHOUT VIOLATION ###################

# DEPEDENCY INVERSION PRINCIPLE(DIP)
#  High level module should not depends on low level module . Bu it depends on abstraction not concreate implemenation.

# Note:

# We create new class for WiredKeyboard and WireLessKeyboard
# we can't depents on low leve implentation.
# Client can chosse whatever we want without uusing concreate implemation.

module Keyboard
	def connect
		raise NotImplementedError 'No Implemenataion Found'
	end
end

class WiredKeyboard
	include Keyboard

	def connect
		'Wired Keyboard connected succesfully'
	end
end

class WireLessKeyboard
	include Keyboard
	
	def connect
		'WireLess Keyboard connected succesfully'
	end
end


class Computer
    def initialize(keyboard)
    	@keyboard = keyboard
    end

	def start
		@keyboard.connect()
	end
end


wired_keyboard = WiredKeyboard.new

computer = Computer.new(wired_keyboard)
p computer.start

wireless_keyboard = WireLessKeyboard.new

computer = Computer.new(wireless_keyboard)
p computer.start