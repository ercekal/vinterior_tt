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
  end
end
