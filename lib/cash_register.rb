require "pry"
class CashRegister
  attr_accessor :total, :discount, :quantity, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @quantity = quantity
    @items = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
      @price = price
      @total += (@price * quantity)
      if quantity > 1
        counter = 0
        while counter < quantity
          @items << item
          counter += 1
        end
      else
        @items << item
      end
  end

  def apply_discount
    if @discount > 0
      @applied_discount = (@price * @discount)/100
      @total = @total - @applied_discount
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    quantity = @quantity
    if quantity > 0
      @total -= @price
    else quantity > 1
      mult_item = @price * @quantity
      @total -= mult_item
    end
  end

end
