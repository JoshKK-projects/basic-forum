class PostsController < ApplicationController
  def index
  	@posts = Post.all.order(created_at: :desc)
  end

  def show
  	@post = Post.find(params[:id])
  	@comment = Comment.new
  	# @comments = Comment.find(@post.id)
  end

  def create
  	newPostData =  params.require(:post).permit(:title, :content)
  	newPostData['user_id'] = current_user.id 
  	@post = Post.new(newPostData)
  	@post.save
  	redirect_to @post
  end
end
