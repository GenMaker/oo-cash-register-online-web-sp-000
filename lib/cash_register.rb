require "pry"
class CashRegister
  attr_accessor :total, :discount, :quantity, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @quantity = quantity
    @items
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total= @total +(@price * quantity)
  end

  def apply_discount
    if @discount > 0
      take_off = @discount
      @applied_discount = (@price * @discount)/100
      
      @total = @total - @applied_discount
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items (items)
  end
 




end
