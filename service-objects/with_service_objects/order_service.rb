class ProcessPaymentService
  def initialize(order, amount, payment_strategy)
    @order = order
    @amount = amount
    @payment_strategy = payment_strategy
  end

  def call
    pay
    update_order
    send_notification
  end

  private

  def pay
    @payment_strategy.pay(@amount)
  end

  def update_order
    puts "Order marked as paid"
  end

  def send_notification
    puts "Payment confirmation sent"
  end
end
