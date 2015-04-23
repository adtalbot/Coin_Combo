require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the coin combo path', {:type => :feature}) do
  it('processes the user entry and returns the coin count') do
    visit('/')
    fill_in('cents', :with => '147')
    click_button('Send')
    expect(page).to have_content('Your change is: 5 quarters, 2 dimes, 0 nickels, 2 pennies.')
  end
end
