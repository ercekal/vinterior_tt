require 'checkout'

describe Checkout do

  subject(:checkout) {described_class.new}
  let(:item) {double :item}

  describe '#scan' do
    it 'should add correct item price to total' do
      co = Checkout.new(0)
      chair = Item.new 001,  "chair",  7.0
      co.scan(chair)
      expect(co.total).to eq 7.0
    end

    it 'should add the item to basket' do
      co = Checkout.new(0)
      chair = Item.new 001,  "chair",  7.0
      co.scan(chair)
      expect(co.basket).to include chair
    end

    it 'should make promotion if total is over 60' do
      co = Checkout.new(1)
      chair = Item.new 001,  "chair",  30.0
      table = Item.new 002,  "table",  40.0
      co.scan(chair)
      co.scan(table)
      expect(co.total).to eq 63
    end

    it 'should make promotion if there are 2 or more chairs' do
      co = Checkout.new(2)
      chair = Item.new 001,  "chair",  9.25
      co.scan(chair)
      co.scan(chair)
      expect(co.total).to eq 17
    end
  end

  describe '#test1' do
    it 'should add have correct result' do
      co = Checkout.new(1)
      chair = Item.new 001,  "chair",  9.25
      table = Item.new 002,  "table",  45.00
      light = Item.new 003,  "light",  19.95
      co.scan(chair)
      co.scan(table)
      co.scan(light)
      expect(co.total).to eq 66.78
    end

    it 'should add have correct result' do
      co = Checkout.new(2)
      chair = Item.new 001,  "chair",  9.25
      table = Item.new 002,  "table",  45.00
      light = Item.new 003,  "light",  19.95
      co.scan(chair)
      co.scan(light)
      co.scan(chair)
      expect(co.total).to eq 36.95
    end

    it 'should add have correct result' do
      co = Checkout.new(3)
      chair = Item.new 001,  "chair",  9.25
      table = Item.new 002,  "table",  45.00
      light = Item.new 003,  "light",  19.95
      co.scan(chair)
      co.scan(table)
      co.scan(chair)
      co.scan(light)
      expect(co.total).to eq 73.76
    end
  end
end
