require('rspec')
require('numbers')

describe('#numberInput') do
  it('returns a value of "one" when 1 is entered') do
    expect(number = Convert.new(1)).to(eq("one"))
  end
end
