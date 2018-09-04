
class CashRegister
  attr_accessor :discount :items :total
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
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end



end
