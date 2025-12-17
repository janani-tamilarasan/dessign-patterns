# FACTORY_DESIGN_PATTERN
  - 1. It comes under creational design pattern
  - 2. It provides a interface of creating objects without exposing the acutal implemenations to client
  EX: FOOD FACTORY_APP

  ## When to Use
    - 1. Need of Multiple Implementaion or classes involved wih same behavio Ex: Food Factor -> PIZZA , BURGER, etc
    - 2. Object creation depends on runtime input
    - 3. Want to avoid if–else / case logic in client  and follow OCP principle
    - 4. You want loose coupling
    - 5. New types will be added later
  
  ## HOW to Use/Steps:
    - 1. Define a Common Interface/module
    - 2. Create Concrete Implementations
    - 3. Create the Factory
    - 4. Use Factory in Client Code

  ## Advantges
    - 1. Loose Coupling
    - 2. OCP priciple Follow
    - 3. Centralized Object Creation
    - 4. Provides abstraction to client and no expose the actual implementaion.
    - 5. Better Testability
    - 6. Cleaner code

 ## Disadvantages:
    - 1. Extra Complexity -Adds more classes
    - 2. God Factory (Anti-Pattern) Use Factory Register
    - 3. Putting Business Logic in Factory. Factor is only for logic of creation objects
