require_relative 'item'

class Checkout


attr_reader :total, :basket

  def initialize(promotional_rules)
    @promotional_rules = promotional_rules
    @basket = []
    @total = 0
  end

  def scan(item)
    @basket << item
    @total += item.price
    make_discount
  end

  def make_discount
    if @promotional_rules == 1
      if @total > 60
        @total = @total * 0.9
      end
    end
    @total
  end
end
