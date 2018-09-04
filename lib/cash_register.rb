
class CashRegister
  attr_accessor :discount :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total=(total)
    @total = total
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.total  += price*quantity
    quantity.times do
      items << title

    end

  end

  def apply_discount
    self.total - total.to_f*discount.to_f/100
  end


end
