class CashRegister
  @@total=0
  attr_accessor :discount
  def initialize(discount=0)
    @total = 0
    @items=[]
    @prices=[]
    @@total+=@total
    @discount=discount
  end
  def add_item(name, price, quantity=1)
    @total+=(price*quantity)
    quantity.times do @items<<name
    @prices<<(price*quantity)
    end
  end
  def apply_discount
    if @discount==0
      p "There is no discount to apply."
    else
      discount=@discount*@total/100
      @total-=discount
      p "After the discount, the total comes to $#{@total}."
    end
  end
  def items
    @items
  end
  def void_last_transaction
    last_cost=@prices[-1]
    @total-=last_cost
  end
  def total=(total)
    @total=total
  end
  def total
    @total
  end
end
