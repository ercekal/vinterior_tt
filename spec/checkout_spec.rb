require 'checkout'

describe Checkout do

  subject(:checkout) {described_class.new}
  let(:items) {double :menu}
  let(:order) {double :order}

  context '#list_items' do
      it 'should list the items' do
        expect(checkout.list_items).to eq checkout.items.list
      end
    end
end
