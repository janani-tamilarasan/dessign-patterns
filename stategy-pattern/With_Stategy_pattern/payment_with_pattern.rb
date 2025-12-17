# # Stategic Pattern
#   - Change behavior without changing the client code.

# - PaymentStategy(module)
#    -Paypal
#    - UPI
#  - Payment
#      - call PAymentStategy


# Strategy Interface
module PaymentStrategy
  def pay(amount)
    raise NotImplementedError, "No implementation found"
  end
end

# Concrete Strategies
class Paypal
  include PaymentStrategy

  def pay(amount)
    "Rs.#{amount} was paid using Paypal"
  end
end

class UPI
  include PaymentStrategy

  def pay(amount)
    "Rs.#{amount} was paid using UPI"
  end
end

# Context
class PaymentService
  def initialize(payment_strategy)
    @payment_strategy = payment_strategy
  end

  def pay(amount)
    @payment_strategy.pay(amount)
  end
end

# Client
payment = PaymentService.new(Paypal.new)
puts payment.pay(20)

payment = PaymentService.new(UPI.new)
puts payment.pay(40)
