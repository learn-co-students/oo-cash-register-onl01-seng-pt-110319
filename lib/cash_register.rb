require 'pry'
class CashRegister

    attr_accessor :total, :discount, :quantity, :items, :last_amount

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        @last_amount = price * quantity
        quantity.times do 
            @items << title
        end
    end

    def apply_discount
        if discount > 0
       @discount = @discount/100.to_f
       @total = @total - (@total * (@discount ))
       "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def items 
        @items 
    end

    def void_last_transaction
       @total = @total - last_amount
    end

end