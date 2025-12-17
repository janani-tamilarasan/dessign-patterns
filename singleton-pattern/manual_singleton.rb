# 1. Using Manual process(Thread safe)

class AppConfig
	@instance = nil
	@mutex = Mutex.new

	private_class_method :new

	def self.instance
		return @instance if @instance

		@mutex.synchronize do 
		  @instance ||= new
		end
	end
end


obj1 = AppConfig.instance
obj2 = AppConfig.instance

p obj1 == obj2
# //NOTE thant Both obj1.object_id ==  obj2.object_id and one obj has created