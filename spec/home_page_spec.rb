require 'app.rb'
require 'capybara'

Capybara.app = RockPaperScissorsApp

feature "home page welcomes players" do
  scenario "home page loads and says the welcome msg" do
    visit ("/")
    expect(page).to have_content "Welcome to Rock Paper Scissors game!"
  end
end
