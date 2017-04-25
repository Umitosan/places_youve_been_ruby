require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe("the addplace path", {:type => :feature}) do
  it("will return the user's place description on the output page") do
    visit("/")
    fill_in("place", :with => "Paris")
    click_button("Go")
    expect(page).to have_content("Paris")
  end
end
