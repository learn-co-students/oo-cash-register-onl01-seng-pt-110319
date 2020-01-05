require 'pry'
class CashRegister
      attr_accessor :total, :discount 
  
  def initialize(discount= 0.00)
      @total = 0.00 
      @discount = discount
  end
  
  def total
    @total
  end
  
  def add_item(title, price, qnty = 1.0)
    @previous_total = @total
    @total = @total + (price * qnty)
  end
  
  def apply_discount
    @total = @total * ((100.00 - @discount)/100.00)
    discounted_total = @total.to_i
    "After the discount, the total comes to $#discounted_total."
  end
end