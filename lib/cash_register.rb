require 'pry'

attr_accessor :total, :discount, :last_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      # binding.pry
      self.items << title
    end 
    @last_amount = price * quantity
  end
  
  
  def apply_discount
    if @discount > 0 
      @total = @total - (@total * @discount / 100) 
      "After the discount, the total comes to $#{@total}."
    else 
      "There is no discount to apply."
    end
  end
  
    def items
      @items
    end
    
    def void_last_transaction
      #@total = @total - @last_amount
      @total -= @last_amount
    end
    
end 
