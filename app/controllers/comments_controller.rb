class CommentsController < ApplicationController
	def create
    puts current_user
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(params[:comment].permit(:comment))
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to post_path(@post)
    else
      flash.now[:danger] = "Error"
    end
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy

		redirect_to post_path(@post)
	end
end
