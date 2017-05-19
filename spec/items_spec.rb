require 'items'

describe Items do

subject(:items) {described_class.new}

    describe '#add' do
      it 'should add an item to the list' do
        items.add(001, 'soap', 7.0)
        expect(items.list).to include(001, 'soap' => 7.0)
      end
    end

    describe '#list_items' do
      it 'should list the menu items' do
        items.add(004, 'chair', 8.50)
        items.add(005, 'table', 17.25)
        expect(items.list_items).to eq items.list
      end

    end

end
