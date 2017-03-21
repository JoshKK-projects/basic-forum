require 'rails_helper'

RSpec.describe Post, :type => :model do

	it "is not valid without a title" do 
		post = Post.new(title: nil, content: 'stuff', user_id: 1)
		expect(post).to_not be_valid
	end
	it "is not valid without content" do
		post = Post.new(title: 'title', content: nil , user_id: 1)
		expect(post).to_not be_valid
	end
	it "is not valid without a User" do
		post = Post.new(title: 'title', content: 'content' , user_id: nil)
		expect(post).to_not be_valid
	end

end