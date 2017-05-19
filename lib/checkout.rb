require_relative 'item'

class Checkout

attr_reader :items, :order, :eachtotal

  def initialize(items: Items.new)
    @items = items
    @eachtotal = []
  end

  def read_items
    items.list_items
  end
end
