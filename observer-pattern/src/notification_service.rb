# =========================
# Observer Interface
# =========================
class Customer
  def notify(product_name)
    raise NotImplementedError, "No implementation"
  end
end

# =========================
# Concrete Observer
# =========================
class AmazonCustomer < Customer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def notify(product_name)
    "#{name}, your requested product #{product_name} is now live on Amazon!"
  end
end

# =========================
# Subject Interface
# =========================
module ProductLaunchNotifier
  def subscribe(observer)
    raise NotImplementedError
  end

  def unsubscribe(observer)
    raise NotImplementedError
  end

  def notify_customers
    raise NotImplementedError
  end
end

# =========================
# Concrete Subject
# =========================
class IPhoneLaunchNotifier
  include ProductLaunchNotifier

  def initialize(product_name)
    @product_name = product_name
    @customers = []
  end

  def subscribe(customer)
    @customers << customer
  end

  def unsubscribe(customer)
    @customers.delete(customer)
  end

  def notify_customers
    @customers.map do |customer|
      customer.notify(@product_name)
    end
  end
end

# =========================
# Client Code
# =========================
product_launch_notifier = IPhoneLaunchNotifier.new("iPhone 20")

customer1 = AmazonCustomer.new("John")
customer2 = AmazonCustomer.new("Abraham")
customer3 = AmazonCustomer.new("Jessy")

product_launch_notifier.subscribe(customer1)
product_launch_notifier.subscribe(customer2)
product_launch_notifier.subscribe(customer3)

product_launch_notifier.unsubscribe(customer3)

puts product_launch_notifier.notify_customers
