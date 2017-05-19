require 'checkout'

describe Checkout do

  subject(:checkout) {described_class.new}
  let(:item) {double :item}

  describe '#scan' do
    it 'should add correct item price to total' do
      co = Checkout.new
      chair = Item.new 001,  "chair",  7.0
      co.scan(chair)
      expect(co.total).to eq 7.0
    end
  end
end
