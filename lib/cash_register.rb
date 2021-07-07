require 'pry'
class CashRegister
  attr_accessor :discount, :total, :qty, :items, :costs, :sub_tot
  
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @costs = []
    @sub_tot = 0
  end
  
  def total
    @total
  end
  
  def add_item(i, amt, qty=1)
    @sub_tot = amt*qty
    @total = self.total + @sub_tot
    qty.times {self.items.push(i)}
  end
  
  def apply_discount
    if @discount > 1
      @total = self.total - (discount.to_f/100*1000)
      "After the discount, the total comes to $#{@total.floor}."
    else 
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= self.sub_tot
  end
  
end
