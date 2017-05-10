require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

require('launchy')

  describe("the index page path", {:type => :feature}) do

    it("is the landing page for the app") do
      visit("/")
      click_on("Slang it up!")
      expect(page).to have_content(eq("Add that slang you and your friends use and no one else knows."))
    end




end
