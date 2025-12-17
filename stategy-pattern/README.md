# Stategic Pattern
  - Change behavior without changing the client code.

## When to Use
  ✔ You have multiple algorithms for same task
  ✔ You see too many conditionals (if/else)
  ✔ Behavior needs to change at runtime
  ✔ You want clean, extendable design

## Steps/How to USe
  1. Create a common interface (module)
  2. Create a Concreate implemtnation
  3. Use it client side


## Advantages
  ✔ No if/else
  ✔ Easy to add new strategy
  ✔ Follows Open–Closed Principle
  ✔ Clean and testable code
  ✔ Runtime behavior change possible

## Disadvantages

  ❌ More classes
  ❌ Slightly complex for very simple logic
  ❌ Client must know which strategy to use