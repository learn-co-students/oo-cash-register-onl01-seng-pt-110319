require 'pry'

class CashRegister
##  Note that a discount is calculated as a percentage off of the total cash register price (e.g. a discount of 20 means the customer receives 20% off of their total price).
 attr_accessor :total, :discount, :previous_item_total
 
  def initialize(discount = 0)
    @total = total = 0
    @discount = discount
    @previous_item_total = []
  end
  
  def add_item(title, price, quantity = 1)
    if quantity > 1
      quantity_counter = 0
      while quantity_counter < quantity
        @previous_item_total << title
        quantity_counter += 1
      end
    else
      @previous_item_total << title
    end 

    @total = (price*quantity)
    @total
  end 
  
  
  def void_last_transaction
    
  end
  
end 


