require_relative 'item'

class Checkout

attr_reader :total, :basket

  def initialize
    @basket = []
    @total = 0
  end

  def scan(item)
    @total += item.price
  end

end
