class CashRegister


attr_accessor :total, :discount, :title, :price

  def initialize (discount = 0)
    @total = 0
    @discount = 0
  end

  def total
    @total
  end
  
  def add_item (title, price, quantity = 0)
    if quantity == 0
      @total = total + price
    else quantity > 0
      @total = total + (price * quantity)
    end
  end
  
  def apply_discount
    @total = total - (total * (@discount/100))
    puts "After the discount, the total comes to #@{total}."
  end
    
    
end
