class Items
attr_reader :list

  def initialize
    @list = {
      001 => {'very cheap chair' => 9.25},
      002 => { 'Little table' => 45.00},
      003 => {'Funky light' => 19.95}
    }
  end

  def add(code, name, price)
    list.store(code, name, price)
  end

  def list_items
    list
  end
end
