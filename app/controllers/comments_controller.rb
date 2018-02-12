class CommentsController < ApplicationController
	before_action :set_post

	def create
		comment = @post.comments.create(params[:comment].permit(:comment))
    comment.user_id = current_user.id

    if comment.save
      redirect_to post_path(@post)
    else
      flash.now[:danger] = comment.errors.full_messages
    end
	end

	def destroy
		comment = @post.comments.find(params[:id])
		comment.destroy

		redirect_to post_path(@post)
	end

	private

	def set_post
		@post = Post.find(params[:post_id])
	end
end
