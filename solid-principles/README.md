## SOLID PRINCIPLE
    By knowing the below principles, developer that can create a code with easier, maintainable, readable, and cleaner

### SINGLE RESPONSIBILITY PRINCIPLE(SRP)
    Each class has atleast on reason to change.ie) Each class should have only one responsibility.
    Ex: Employee - SalaryCalcualtion - Report

### OPEN CLOSED PRINCIPLE(OCP)
    Open for extension and closed for modification. ie) It allows to add new functionality without changing the existing code.
    Ex: ShapeCalcualtor (area_calculate) -> Circle -> Triangle

### LISKOV SUBSITUTION PRINCIPLE(LSP)
    The Objects of superclasses are replaced with objects of subclass, without affecting the correctness of program. (Inheritence)
    Ex: Bird(class -> make sound) 
    FlyingBird(module -> fly)
    -> Sparrow(Class) -> Penguin(Class)

### INTERFACE SEGREGGATION PRINCIPLE(ISP)
    Client should not forced to depend on interfacs that do ntot use. It encourages smaller and more specific interfaces
    Ex : Workable(module)
    Eatable(Module)
    Human
    Robot

### DEPEDENCY INVERSION PRINCIPLE(DIP)
    High level modules should not depend on low level modules ,But it depends on abstraction not concreate implementaion
    EX: Computer(class) 
        Keyboard(module)
        WiredKeyBoard(Class)
        WireLEssKeyBoard(Class)
