class CommentsController < ApplicationController
  def single
  end

  def create
  	@post = Post.find(params[:post_id])
	# newCommentData =  params.require(:comment).permit(:title, :content)
  	# newCommentData['user_id'] = current_user.id 
  	@comment = @post.comments.new(comment_params)
  	@comment.user = current_user
  	@comment.save
  	redirect_to @post
  	# @comment.save
  end

  def comment_params
  	params.require(:comment).permit( :title, :content)
  end

end
