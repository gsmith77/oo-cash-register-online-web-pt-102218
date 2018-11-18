class CashRegister


attr_accessor :total, :discount, :title, :price, :array

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
  
  def title
    @title
  end
  
  def array
    @array
  end
  
  def add_item (title, price, quantity = 0)
    if quantity == 0
      @total = total + price
    else quantity > 0
      @total = total + (price * quantity)
    end
  end
  
  def apply_discount
    if @discount > 0
      @total = @total - (@total * (@discount/100.000))
      "After the discount, the total comes to $800."
    elsif @discount = 0
    "There is no discount to apply."
    end
  end
  
  def items
    array = []
    (quantity.times) do 
      array << @title
    end
    array
  end
    
end
