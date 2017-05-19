require_relative 'item'

class Checkout

attr_reader :total_price, :basket

  def initialize(promotional_rules)
    @promotional_rules = promotional_rules
    @basket = []
    @total_price = 0
  end

  def scan(item)
    @basket << item
    @total_price += item.price
  end

  def total
    if @promotional_rules == 1
      if @total_price > 60
        @total_price = @total_price * 0.9
      end
    elsif @promotional_rules == 2
      if count_chairs >= 2
        @total_price = @total_price - ((9.25 - 8.50) * count_chairs)
      end
    elsif @promotional_rules == 3
      if count_chairs >= 2
        @total_price = @total_price - ((9.25 - 8.50) * count_chairs)
      end
      if @total_price > 60
        @total_price = @total_price * 0.9
      end
    end
    @total_price.round(2)
  end

  private

  def count_chairs
    result = @basket.count { |element| element.name.match(/(chair)s?\Z/i) }
  end

end
