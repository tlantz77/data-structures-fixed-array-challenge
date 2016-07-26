require_relative 'fixed_array'

describe FixedArray do

  let(:fixed) { FixedArray.new(5) }

  it 'can instantiate a new array of a given size' do
    expect(fixed).to be_a FixedArray
    expect(fixed.arr.length).to eq(5)
  end

  it 'can retrieve the element at a given index' do
    expect(fixed.get(2)).to eq(nil)
  end

  it 'will raise error if given index is outside the bounds of the array' do
    expect { fixed.get(6) }.to raise_error(StandardError, 'Out of Bounds')
  end

  it 'can assign an element to a given index' do
    fixed.set(3, "What up!")
    expect(fixed.get(3)).to eq("What up!")
  end

  it 'will raise error if set element is outside the bounds of the array' do
    expect { fixed.set(6, "Yahoo!") }.to raise_error(StandardError, 'Out of Bounds')
  end

end
