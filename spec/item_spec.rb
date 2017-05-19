require 'item'

describe Item do

subject(:item) {described_class.new(code, name, price)}

    describe 'price' do
      it 'should have correct item price' do
        chair = Item.new 001,  "chair",  7.0
        expect(chair.price).to eq 7.0
      end
    end

    describe 'name' do
      it 'should have correct item price' do
        chair = Item.new 001,  "chair",  7.0
        expect(chair.name).to eq "chair"
      end
    end

    describe 'code' do
      it 'should have correct item price' do
        chair = Item.new 001,  "chair",  7.0
        expect(chair.code).to eq 001
      end
    end
end
