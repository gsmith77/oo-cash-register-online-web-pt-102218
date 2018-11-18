class CashRegister


attr_accessor :total, :discount, :title, :price

  def initialize (discount = 0)
    @total = 0
    @discount = discount
  end

  def total
    @total
  end
  
  def discount
    @discount
  end
  
  def add_item (title, price, quantity = 0)
    if quantity == 0
      @total = total + price
    else quantity > 0
      @total = total + (price * quantity)
    end
  end
  
  def apply_discount
    total = @total - (@total * (@discount/100))
    return "After the discount, the total comes to #{total}."
  end
    
    
end
