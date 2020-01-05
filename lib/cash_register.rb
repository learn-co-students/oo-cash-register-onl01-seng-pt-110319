require 'pry'
class CashRegister
      attr_accessor :total, :discount
  @items = Array.new 
  def initialize(discount= 0.00)
      @total = 0.00 
      @discount = discount
      @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, qnty = 1.0)
    i = 0
    while i < qnty do
      @items << title
      i++
    end
    @total = @total + (price * qnty)
  end
  
  def apply_discount
    message = "There is no discount to apply."
    @total = @total * ((100.00 - @discount)/100.00)
    disc_tot = @total.to_i
    if @discount > 0 
     message = "After the discount, the total comes to $#{disc_tot}."
    end
    message
  end
  def items
    @items
  end
end