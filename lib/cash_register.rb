class CashRegister
    attr_accessor :total, :discount, :items, :price, :last_transaction
    counter = 0
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

     def add_item(item, price, quantity = 1)
        @last_transaction = price * quantity
        @price = price
        @total += price * quantity

     if quantity > 1
        count = 0
        while count < quantity
            @items << item
            count += 1
        end
    else
      @items << item
    end
     @total
    end
    def apply_discount()
       if @discount > 0
        @discount = discount/100.to_f
        @total = @total - (@total * (@discount))
         return "After the discount, the total comes to $#{total.to_i}."
       else
         "There is no discount to apply."
       end
    end

    def void_last_transaction()
        @total -= @last_transaction
    end

end


# class CashRegister
#
#   attr_accessor :total, :discount, :items, :price, :last_transaction
#       counter = 0
#       def initialize(discount = 0)
#           @total = 0
#           @discount = discount
#           @items = []
#
#       end
#
#   def add_item(title,price,quantity = 1)
#     @last_transaction = price * quantity
#     @price = price
#     @total += price * quantity
#
#     if quantity>1
#       i=0
#       while i<quantity
#         @items << title
#         i+=1
#       end
#     else
#       @items << title
#     end
#     @total += price*quantity
#     @last_transaction_amount = @total
#     @total
#   end
#
#   def apply_discount()
#     if @discount > 0
#       @discount = @discount/100.to_f
#       @total = @total - (@total * (@discount))
#       "After the discount, the total comes to $#{@total.to_i}."
#     else
#       "There is no discount to apply."
#     end
#   end
#
#
#   def void_last_transaction
#     @total -= @last_transaction_amount
#   end
#
# end
