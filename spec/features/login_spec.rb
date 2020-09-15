require "rails_helper"

RSpec.feature "Login" do
	let(:user){create(:user)} 
	scenario "A user logs in" do
		visit "/"
		expect(page).to have_content("Log in")
		fill_in "Email", with: user.email
		fill_in "Password", with: 'mypassword'
		click_button "Log in"
		expect(page).to have_content("Welcome to #{user.username}'s page")
	end
end