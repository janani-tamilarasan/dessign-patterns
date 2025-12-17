# Too many responsibilities

# Hard to test

# Fat model

# Hard to reuse

class Order
  def process_payment(amount, payment_type)
    if payment_type == "upi"
      puts "UPI payment of #{amount}"
    elsif payment_type == "card"
      puts "Card payment of #{amount}"
    end

    puts "Sending confirmation email"
    puts "Updating order status"
  end
end
