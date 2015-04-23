require('rspec')
require('coin_combo')

describe('Fixnum#coin_combo') do
  it("finds out how many quarters, nickels, dimes, and pennies are in the user input") do
    expect((147).coin_combo()).to(eq([5, 2, 0, 2]))
  end
end
