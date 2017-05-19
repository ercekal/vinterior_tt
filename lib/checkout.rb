require_relative 'item'

class Checkout

attr_reader :total_price, :basket, :chair_count

  def initialize(promotional_rules)
    @promotional_rules = promotional_rules
    @basket = []
    @total_price = 0
    @chair_count = 0
  end

  def scan(item)
    @basket << item
    count_chairs(item)
    @total_price += item.price
  end

  def total
    if @promotional_rules == 1
      if @total_price > 60
        @total_price = @total_price * 0.9
      end
    elsif @promotional_rules == 2
      if @chair_count >= 2
        @total_price = @total_price - ((9.25 - 8.50) * @chair_count)
      end
    elsif @promotional_rules == 3
      if @chair_count >= 2
        @total_price = @total_price - ((9.25 - 8.50) * @chair_count)
      end
      if @total_price > 60
        @total_price = @total_price * 0.9
      end
    end
    @total_price.round(2)
  end

  private

  def count_chairs(item)
    if item.code == 001
      @chair_count += 1
    end
  end

end
