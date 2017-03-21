require 'rails_helper'


describe "log in", :type => :feature do
	before :each do
		user = User.new(first_name: 'josh', last_name: 'kk', email: 'mail@mail.com', password: 'password')
	end

	it "logs into app" do
		visit '/users/sign_up'
		fill_in 'user_email', :with => 'email@email'
		fill_in 'user_first_name', :with => 'josh'
		fill_in 'user_last_name', :with => 'kk'
		fill_in 'user_password', :with => 'password'
		fill_in 'user_password_confirmation', :with => 'password'
		click_on "Sign up for app"
		expect(page.current_path).to eq "/"

	end
end