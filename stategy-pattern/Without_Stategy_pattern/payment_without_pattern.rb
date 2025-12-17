# # Stategic Pattern
#   - Change behavior without changing the client code.

#   # Flow
#   # Paymnet
#   #   - Paypal
#   #   - Upi
#   #   


  class PaymentService
    attr_reader :type, :amount

    def initialize(type, amount)
      @type = type
      @amount = amount
    end

    def pay
      case type
        when 'paypal'
          return "Rs.#{amount} was done from paypal"
        when 'upi'
          return "Rs.#{amount} was done from upi"
        else
          raise NotImplementedError 'No Implementaion'
      end
    end
  end

  payment = PaymentService.new('paypal', 20)
  p payment.pay