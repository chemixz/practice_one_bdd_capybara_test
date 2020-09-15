require "rails_helper"

RSpec.feature "Creating Category" do 
	let(:user){create(:user)}

	before do 
		sign_in user
	end


	scenario "A user creates a new article" do
		visit "/categories"
		expect(page).to have_content("Listing All Categories")

		click_link "New Category" 
		fill_in "Title", with: "This is Category RSpec"
		click_button "Create Category"
		expect(page.current_path).to eq(categories_path)
		expect(page).to have_content("Category was created successfully")
	end
end