require 'rails_helper'

RSpec.describe User, :type => :model do

	it "is not valid without a first_name" do 
		user = User.new(first_name: nil, last_name: 'kk', email: 'mail@mail.com', password: 'password')
		expect(user).to_not be_valid
	end
	it "is not valid without a last_name" do
		user = User.new(first_name: 'josh', last_name: nil, email: 'mail@mail.com', password: 'password')
		expect(user).to_not be_valid
	end
	it "is not valid without a email" do
		user = User.new(email: nil, password: 'password', first_name: 'josh', last_name: 'kk')
		expect(user).to_not be_valid
	end

end