# SINGLETON PATTERN
  - Create only on instance of class and provide global access to it.ie)Should not create multiple instances and it always return same object it for all insances.
  Ex: AppConfig

## When to Use:

  - 1. Logging
  - 2. Database connection
  - 3. Caching
  - 4. Configuration
  ## NOTE
    It should be used only for managing shared resources like configuration or logging,and avoided for business logic.

## Steps to create(Manually or builtin(internally))
  - 1. Create prive constrctor
  - 2. Create intance method(class method)
  - 3. Stores a single instance internally
  - 4. Add Mutex for thread safte

##  How to Use
  
  - 1. Using Manual process(Thread safe)
    
  - 2. Using built-in method(singleton)
       - By default thread safe
       - Using built -in with include Singleton has given following methods
         - new(private)
         - instance,
         - clone(disabled)
         - dup(disabled)
         ## NOTE:
            It prevent to use clone and dup in Using built-in method and will thrwo error

         ### Key method
         YourClass.instance

## Advantages
  
  ### Follows the SRP Principle 
        Only one instance is created and it has one responsible.

  ### Saves memory
        No duplicate objects

  ### Thread safe (Ruby implementation)
       Built-in synchronization

  ### Lazy initialization
       Instance created only when needed

## Disadvantages/Mistakes
 
  ### Violates SOLID (DIP)
     Logger.instance.log("started")
     ### Better

     class Service
	  def initialize(logger)
	    @logger = logger
	  end
	end
  
  ### Using Singleton for Business Logic
    Singleton should manage resources, not domain logic

  ### Difficult to tesing abd Acts like global state
    - Changing logger affects entire system

  ### Thread Safety Risks (if custom implementation)
