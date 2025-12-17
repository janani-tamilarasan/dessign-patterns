 # Using built-in method(singleton)
 #       - By default thread safe
 #       - Using built -in with include Singleton has given following methods
 #         - new(private)
 #         - instance,
 #         - clone(disabled)
 #         - dup(disabled)
 #         ### Key method
 #         YourClass.instance

 require 'singleton'

 class AppConfig
  include Singleton

  def log
    'hello'
  end
 end


obj1 = AppConfig.instance
obj2 = AppConfig.instance
p obj1 == obj2

// It violest the DIP
p AppConfig.instance.log()