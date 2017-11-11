class CashRegister

  attr_accessor :total, :discount :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = Array.new
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @items << 
  end

  def apply_discount
    if(@discount == 0)
      return "There is no discount to apply."
    end
    @total = @total - (@total * (@discount * 0.01))
    return "After the discount, the total comes to $#{@total.to_i}."
  end

end
