require 'pry'

class CashRegister

attr_accessor :total, :items
attr_reader :discount, :title

  def initialize(discount = 0, total = 0)
    @total = 0
    @discount = discount.to_f
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @items += [title] * quantity # += totdaje wszystko (bułka chleb chleb); << dodaje tylko nowe kategorie (bułka chleb)
  end

  def apply_discount
    return "There is no discount to apply." if discount <= 0
    # binding.pry
      total_with_discount = self.total.to_i * @discount.to_i * 0.01
      @total -= total_with_discount
      return "After the discount, the total comes to $#{@total.to_i}."
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= self.total
  end
# binding.pry
end
