require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

require('launchy')

describe("the index page path", {:type => :feature} ) do
  it("is the landing page for the app") do
    expect(page).to have_content(eq())
  end
end
