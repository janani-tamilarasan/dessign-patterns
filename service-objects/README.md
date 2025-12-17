# SERVICE OBJECTS
  - A Service Object extracts complex business logic into a dedicated class with a single responsibility.

## Rules / Conventions for Service Objects

  **1.One public method (call)**
    service.call

  **2.One business responsibility**

  “Create order + Pay + Ship + Email”
✅ “ProcessPayment”, “CreateOrder”


## When to Use Service Objects?

	✔ Complex business logic
	✔ Logic used in multiple places
	✔ Models/controllers becoming fat
	✔ External API calls
	✔ Transactions / workflows