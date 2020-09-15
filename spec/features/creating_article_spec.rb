require "rails_helper"

RSpec.feature "Creating Articles" do 
	let(:user){create(:user)}

	before do 
		sign_in user
	end

	scenario "A user creates a new article" do
		visit "/articles"
		click_link "New Article" 
		fill_in "Title", with: article.title
		fill_in "Description", with: article.description
		click_button "Create Article"
		expect(page.current_path).to eq(articles_path)
		expect(page).to have_content("Article was successfully created")
	end
end