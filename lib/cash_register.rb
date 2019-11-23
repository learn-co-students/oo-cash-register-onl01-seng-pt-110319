class CashRegister

  attr_accessor :total, :discount, :items, :last_trans_price

  def initialize( discount = 0 )
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item( item, price, quantity = 1 )
    @total += price * quantity
    @last_trans_price = price * quantity
    count = 0
    while count < quantity do
      @items.push item
      count += 1
    end
  end

  def apply_discount
    if @discount != 0
      @total -= 200
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.pop
    @total -= @last_trans_price
  end
end
