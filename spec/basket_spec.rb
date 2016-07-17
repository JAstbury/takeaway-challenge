require 'basket'

describe Basket do

describe '.initialize' do
  it 'creates the basket with an empty order' do
    expect(subject.basket).to eq({})
  end
end

describe '.add_dish' do
  it 'adds the dish to the order' do
    subject.add_dish("Fried Rice", 1)
    expect(subject.basket).to include "Fried Rice"
  end

  it 'should update quantity if dish already ordered' do
    subject.add_dish('Chilli Beef', 1)
    subject.add_dish('Chilli Beef', 1)
    expect(subject.basket).to include "Chilli Beef"=>2
  end
end

describe '.total' do
  it 'calculates the correct total' do
    subject.add_dish("Fried Rice", 2)
    subject.add_dish("Chilli Beef", 1)
    expect(subject.total).to eq(12)
  end
end

end
