def sign_in user
	visit "/"
	expect(page).to have_content("Log in")
	fill_in "Email", with: user.email
	fill_in "Password", with: 'mypassword'
	click_button "Log in"
	expect(page).to have_content("Welcome to #{user.username}'s page")	
end