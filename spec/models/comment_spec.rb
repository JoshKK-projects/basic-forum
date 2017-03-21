require 'rails_helper'

RSpec.describe Comment, :type => :model do

	it "is not valid without a title" do 
		comment = Comment.new(title: nil, content: 'stuff', user_id: 1, post_id: 1)
		expect(comment).to_not be_valid
	end
	it "is not valid without content" do
		comment = Comment.new(title: 'title', content: nil, user_id: 1, post_id: 1)
		expect(comment).to_not be_valid
	end
	it "is not valid without a User" do
		comment = Comment.new(title: 'title', content: 'content', user_id: nil, post_id: 1)
		expect(comment).to_not be_valid
	end
	it "is not valid without a Post" do
		comment = Comment.new(title: 'title', content: 'content', user_id: 1, post_id: nil)
		expect(comment).to_not be_valid
	end

end