require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  def initialize(employee_discount=nil)
    @total=0
    @discount=employee_discount
    @items=[]
  end

  def add_item(title, price,quantity=1)
    self.total+=quantity*price
    quantity.times do
    self.items<<title
    end
    self.last_transaction=quantity*price
  end

  def apply_discount
     if @discount
       self.total*=((100.0 - discount)/100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total-=self.last_transaction
  end

end
